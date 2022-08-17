# Run `make help` to display help
.DEFAULT_GOAL := help

# --- Test --------------------------------------------------------------------
BASE_SHA ?= $(shell git cherry master | awk '{print $$2; exit}')^
# Updated .hcl files without .hcl extension, e.g. servedir
CHANGED_MANIFESTS = git diff --name-only $(BASE_SHA) | awk -F. '$$2 == "hcl" {print $$1}'
# Changed versions without channels, e.g. servedir-0.0.2 servedir-0.0.3
CHANGED_VERSIONS = $(CHANGED_MANIFESTS) | xargs -I{} -n1 hermit search -s '^{}$$' | grep -v '@'

test: ## changed manifests are tested with hermit test
	hermit validate source "file://$$PWD"
	rm -rf testenv
	mkdir testenv
	hermit init --sources="file://$$PWD" ./testenv
	$(foreach pkg, $(shell $(CHANGED_VERSIONS)), ./testenv/bin/hermit test -t $(pkg)$(nl))

# --- Autoversion  -------------------------------------------------------------
autoversion: ## update manifests that use auto-version to latest available versions
	[[ -z "$$(git status --porcelain)" ]] || { echo "dirty workspace aborting"; exit 1; }
	hermit -d manifest auto-version *.hcl
	[[ -n "$$(git status --porcelain)" ]] || { echo "No change"; exit 0; }
	git commit -am "Auto-versioned: $$(git diff --name-only | paste -s -d ' ' -)"
	$(if $(CI), git push)

# --- Utilities ----------------------------------------------------------------
COLOUR_NORMAL = $(shell tput sgr0 2>/dev/null)
COLOUR_RED    = $(shell tput setaf 1 2>/dev/null)
COLOUR_GREEN  = $(shell tput setaf 2 2>/dev/null)
COLOUR_WHITE  = $(shell tput setaf 7 2>/dev/null)

help:
	@awk -F ':.*## ' 'NF == 2 && $$1 ~ /^[A-Za-z0-9%_-]+$$/ { printf "$(COLOUR_WHITE)%-25s$(COLOUR_NORMAL)%s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort

.PHONY: help

# ---- Working with Hermit -----------------------------------------------------
define nl


endef

# Activate hermit if not already activated
ifndef ACTIVE_HERMIT
$(eval $(subst \n,$(nl),$(shell bin/hermit env -r | sed 's/^\(.*\)$$/export \1\\n/')))
endif

# Ensure make version is gnu make 3.82 or higher
ifeq ($(filter undefine,$(value .FEATURES)),)
$(error Unsupported Make version. \
	$(nl)Use GNU Make 3.82 or higher (current: $(MAKE_VERSION)). \
	$(nl)Activate 🐚 hermit with `. bin/activate-hermit` and run again \
	$(nl)or use `bin/make`)
endif
