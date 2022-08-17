description = "Simple HTTP server serving directory contents"
source = "https://github.com/foxygoat/servedir/releases/download/v${version}/servedir_${version}_${os}_${arch}.tar.gz"
binaries = ["servedir"]

version "0.0.2" {
  auto-version {
    github-release = "foxygoat/servedir"
  }
}
