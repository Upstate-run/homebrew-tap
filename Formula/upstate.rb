class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.1/upstate_0.2.1_darwin_amd64.tar.gz"
      sha256 "f7946e9ddc8a68dfce7e856a6dcc9359ae54d99a7b740adf248796713b74eafd"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.1/upstate_0.2.1_darwin_arm64.tar.gz"
      sha256 "ba4b95ee15487b6feb85b1337a5a763da4a25348b417d19d446d2a7e59aedbad"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.1/upstate_0.2.1_linux_amd64.tar.gz"
      sha256 "d3c11c4d1dc4a4e4ee9badcafc87f289e592ded5ee8e49f4d544f89564491f4f"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.1/upstate_0.2.1_linux_arm64.tar.gz"
      sha256 "be75fb88d5eb4d7d48ebd7d359c4434437ce1d1437d4e23a4a856da9f380f19a"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
