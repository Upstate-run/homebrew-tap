class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.32/upstate_0.2.32_darwin_amd64.tar.gz"
      sha256 "6f22cab91ef95bb4da16259a628751da29bd396661c56fd334a20aa1c79641be"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.32/upstate_0.2.32_darwin_arm64.tar.gz"
      sha256 "56450e733e3f9384ac8648b99b28695a1761308e5feabb9d0c5fb2142a504e04"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.32/upstate_0.2.32_linux_amd64.tar.gz"
      sha256 "0c5fa78b23ad076a17fc8c0e9d4cd71e87ec4c511210ebef71089e29863823df"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.32/upstate_0.2.32_linux_arm64.tar.gz"
      sha256 "a420de21d3fb18a52f9663d60704a7f5818405cfbf1ee4a0217eca5ea7592791"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
