class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.1.7/upstate_0.1.7_darwin_amd64.tar.gz"
      sha256 "1691e333dc3703d5e0c29c82bd6e902e45c358c05c1f5d53a1e684c69d45f663"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.1.7/upstate_0.1.7_darwin_arm64.tar.gz"
      sha256 "d7e55ca1bcea39f4b217bf7220f8a6f9c0e4d84933a378aa13541f5daa92b3de"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.1.7/upstate_0.1.7_linux_amd64.tar.gz"
      sha256 "0958253771cfa3f6c3b30f5c6e9f20eca805e55ce2201240e81325bec05648f4"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.1.7/upstate_0.1.7_linux_arm64.tar.gz"
      sha256 "b5d6ddc96aa580fed399f8bc5c7c2f54ae9ce8dac5b680aa5e3c444f3dde0e6c"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
