class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.30/upstate_0.2.30_darwin_amd64.tar.gz"
      sha256 "80407076f28372713b1d199669485d24bbd73d73c6d87bd91300e157c36e378b"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.30/upstate_0.2.30_darwin_arm64.tar.gz"
      sha256 "6d7a3fbfcdb85a281caff8b964f703df26603c8602014e7e04bded0909084f68"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.30/upstate_0.2.30_linux_amd64.tar.gz"
      sha256 "7e5c5e3681a82294bbcf0ceef5e153841107511fd06e166e633023ec366b3652"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.30/upstate_0.2.30_linux_arm64.tar.gz"
      sha256 "c0bfc667d23e25dd9b72596b2358663690486ba7d80d5a8f2ab70df8e7ee5f2e"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
