class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.8/upstate_0.2.8_darwin_amd64.tar.gz"
      sha256 "6fb950342c6bce0d89466eaeaa9fbe80c4f4233d2587f3ae37cb085cf21b4fe4"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.8/upstate_0.2.8_darwin_arm64.tar.gz"
      sha256 "7145e4617e5162acee0c3a60b8cad5dc0f7fb83795ef1b82ee94b13e05fe24f2"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.8/upstate_0.2.8_linux_amd64.tar.gz"
      sha256 "b592f42a6f851d06f157aab8f6af3805481ece648235b6076d1f65147ad50839"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.8/upstate_0.2.8_linux_arm64.tar.gz"
      sha256 "8177203293889a815059b312ac4d6254aab44531ca233526918df0d44028d7a1"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
