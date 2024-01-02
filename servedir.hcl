description = "Simple HTTP server serving directory contents"
source = "https://github.com/foxygoat/servedir/releases/download/v${version}/servedir_${version}_${os}_${arch}.tar.gz"
binaries = ["servedir"]

version "0.0.2" "0.0.3" {
  auto-version {
    github-release = "foxygoat/servedir"
  }
}

sha256sums = {
  "https://github.com/foxygoat/servedir/releases/download/v0.0.2/servedir_0.0.2_linux_amd64.tar.gz": "e55b24c415b89e5314746451b189ea920a4bf34581696ea374674408fc041bcc",
  "https://github.com/foxygoat/servedir/releases/download/v0.0.2/servedir_0.0.2_darwin_amd64.tar.gz": "33ce5c24b67e358e4c425c9e032fc231dd3bed981c304c53515e1ad03ca18ba4",
  "https://github.com/foxygoat/servedir/releases/download/v0.0.2/servedir_0.0.2_darwin_arm64.tar.gz": "48d8fd49afe5f7cf8848af7130905771572e1683a23fc6e018ac1ca4ef4c0679",
  "https://github.com/foxygoat/servedir/releases/download/v0.0.3/servedir_0.0.3_linux_amd64.tar.gz": "4fa67b5f19b4adb67c46358e435b2779d1bab8d36586fdbdcade0e87857e931f",
  "https://github.com/foxygoat/servedir/releases/download/v0.0.3/servedir_0.0.3_darwin_amd64.tar.gz": "f5ea6ca3786d13a96b9f02db2772144c979504e561a3f3c0832b739c5fa2db14",
  "https://github.com/foxygoat/servedir/releases/download/v0.0.3/servedir_0.0.3_darwin_arm64.tar.gz": "1988d02073c634ae658c98aa2b47bf8f86720dbb718712510a75278eb192b573",
}
