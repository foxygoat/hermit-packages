description = "pb converts protobufs between binary, prototext and json"
source = "https://github.com/foxygoat/protog/releases/download/v${version}/pb_${version}_${os}_${arch}.tar.gz"
binaries = ["pb"]

version "0.0.16" {
  auto-version {
    github-release = "foxygoat/protog"
  }
}
