class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.26/upstate_0.2.26_darwin_amd64.tar.gz"
      sha256 "ccb8f208bca7a97d883f5e9c16a2dbd2cf5a624e3e90bb5f58adaf6ae5db4950"
    end
    on_arm do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.26/upstate_0.2.26_darwin_arm64.tar.gz"
      sha256 "a3d903ee5bcad3f8effc038f2ed44a69cade13179dc0af3008468e2bcaa6aae2"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.26/upstate_0.2.26_linux_amd64.tar.gz"
      sha256 "7e858e903fabb578a713da29785fa321ea2190b5459bf8851917ca06195d0ed9"
    end
    on_arm do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.26/upstate_0.2.26_linux_arm64.tar.gz"
      sha256 "5c4890fc8409b8b0a228cd40c7baed21acf41591293e7b2af90da4f95651fb62"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
