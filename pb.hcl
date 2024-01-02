description = "pb converts protobufs between binary, prototext and json"
source = "https://github.com/foxygoat/protog/releases/download/v${version}/pb_${version}_${os}_${arch}.tar.gz"
binaries = ["pb"]

version "0.0.16" "0.0.18" {
  auto-version {
    github-release = "foxygoat/protog"
  }
}

sha256sums = {
  "https://github.com/foxygoat/protog/releases/download/v0.0.16/pb_0.0.16_linux_amd64.tar.gz": "e83b816789e709e62b669991c2c08f8374a20819c07e0aa80497e1d6341dfd80",
  "https://github.com/foxygoat/protog/releases/download/v0.0.16/pb_0.0.16_darwin_amd64.tar.gz": "ae3f2d40e84edf7f1199949392036b79aa7a3d7fb4d165dab844b2b4c2ecba08",
  "https://github.com/foxygoat/protog/releases/download/v0.0.16/pb_0.0.16_darwin_arm64.tar.gz": "3cc549824be3908c5ca943ae25eb01ade7de99cc596dbd2d83f7a5a04250416a",
  "https://github.com/foxygoat/protog/releases/download/v0.0.18/pb_0.0.18_darwin_amd64.tar.gz": "21e248bc3549a7721b166c48a480aba49cb31beeb7b294a2391d36f380575d1c",
  "https://github.com/foxygoat/protog/releases/download/v0.0.18/pb_0.0.18_darwin_arm64.tar.gz": "991ad254e06e478ccfeb61aabb9bc07c36f0377ee705045c01e19becc61777c4",
  "https://github.com/foxygoat/protog/releases/download/v0.0.18/pb_0.0.18_linux_amd64.tar.gz": "62715d192a083b2ae6becdab463bc29b76bbb0fd64f5b512bf9938e717b9cd49",
}
