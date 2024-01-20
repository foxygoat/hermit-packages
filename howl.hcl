description = "howl sends slack or dsicord messages on github build failures"
source = "https://github.com/foxygoat/howl/releases/download/v${version}/howl"
binaries = ["howl"]
requires = ["jq", "gh"]

version "2.0.2" {
  auto-version {
    github-release = "foxygoat/howl"
  }
}
