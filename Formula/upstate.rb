class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.2/upstate_0.2.2_darwin_amd64.tar.gz"
      sha256 "3faecea7bbcf8debfaf5d1ec58a50f230926d67b8369e0b951c5700806d3a6c5"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.2/upstate_0.2.2_darwin_arm64.tar.gz"
      sha256 "63ed65e5ecf4a5e51b006ddcbc816803936d5350fc3dd8d0b47e67501d26b0ae"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.2/upstate_0.2.2_linux_amd64.tar.gz"
      sha256 "6011d8f35ff5fa3934fce053fdc298ee16ffdfaac4d79af9f8e7110bae7ef20f"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.2/upstate_0.2.2_linux_arm64.tar.gz"
      sha256 "226adfae1a2319fc4ed7b05cd8b717a6a511ecf6567d120c99a031d43216fa56"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
