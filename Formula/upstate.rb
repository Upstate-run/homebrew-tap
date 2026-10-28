class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.7/upstate_0.2.7_darwin_amd64.tar.gz"
      sha256 "48252ae7242afde8a0ce21be635c22af44d56b312f3b41d81b48afb675eaf143"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.7/upstate_0.2.7_darwin_arm64.tar.gz"
      sha256 "6a9823c828688c90280ac3157346cc7d2b7bd2739a65182af72b285fcd775961"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.7/upstate_0.2.7_linux_amd64.tar.gz"
      sha256 "77f6e4f086b3ec0eaf9c6770d904035dcb1a6ec0440e3945dfc51a467185e74b"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.7/upstate_0.2.7_linux_arm64.tar.gz"
      sha256 "ac7503211ed514a274651daa8cd65d3e4fe9f1008702b565a33d631890556856"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
