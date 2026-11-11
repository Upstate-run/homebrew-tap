class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.18/upstate_0.2.18_darwin_amd64.tar.gz"
      sha256 "3f1bba804cdd77cb391d0a31b743cc1a7b2bd5b1890ae63f0041ba5125c170f6"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.18/upstate_0.2.18_darwin_arm64.tar.gz"
      sha256 "cbcf7624f04d0774b3d8d56ef60816de2ec0943ff75c380c8a9453d3a8fad0db"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.18/upstate_0.2.18_linux_amd64.tar.gz"
      sha256 "070c168f2b162b1c2dc10594c2a4c21035d644b56f53583313776b8a360c2a34"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.18/upstate_0.2.18_linux_arm64.tar.gz"
      sha256 "b2f6c4d78075feadba122e540155788a134d10a0b37b5abac7e23965c4d01758"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
