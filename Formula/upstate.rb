class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.29/upstate_0.2.29_darwin_amd64.tar.gz"
      sha256 "e2ae3698bcacc6f8217c938a71faf267cbe804b1e40dc2d56d0b3bc0a6688d80"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.29/upstate_0.2.29_darwin_arm64.tar.gz"
      sha256 "71986e9f19f14459296a685ff8865b941b1750474c73b0189dd33bad7e763c57"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.29/upstate_0.2.29_linux_amd64.tar.gz"
      sha256 "f1dde013685e718fac6a87dbbf6105192907ebc2443ea872cb4cba9d6cc40a43"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.29/upstate_0.2.29_linux_arm64.tar.gz"
      sha256 "fd70400d3a1f96afddded538835c50f0df7b42f447430ca7943ab5e073bebf10"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
