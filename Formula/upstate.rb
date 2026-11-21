class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.35/upstate_0.2.35_darwin_amd64.tar.gz"
      sha256 "105cfce38d7aac8003223395e6de00645a632e7d5dc1c2929f79fb7437c76011"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.35/upstate_0.2.35_darwin_arm64.tar.gz"
      sha256 "85c620598f2232d34e20e304929294e5b909b330a5fc983177938a826aeeaaa1"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.35/upstate_0.2.35_linux_amd64.tar.gz"
      sha256 "fe3c8d2e8cf8f15e5ca7f1fd8ec6b993de17e17264f67ec699c0ee9ff50821de"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.35/upstate_0.2.35_linux_arm64.tar.gz"
      sha256 "f0a01928ac2fc52ddff93a0c61d9d16e094d7f161c84a8d59d1496c4ed99d396"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
