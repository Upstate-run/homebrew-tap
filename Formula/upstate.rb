class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.40/upstate_0.2.40_darwin_amd64.tar.gz"
      sha256 "151269c13bc5788569d0d9bdf2e9fe3007f5a89fa67cc50773fe8620df040ce5"
    end
    on_arm do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.40/upstate_0.2.40_darwin_arm64.tar.gz"
      sha256 "d4c111fb177142a8145b81bbd3ca945a1a5d305a5a2f961bb6507087bdcbc6d8"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.40/upstate_0.2.40_linux_amd64.tar.gz"
      sha256 "8e9bd7f5357fbf46b056a9b71a9bd2e49b25815340a2a1298d0670c6dd47bae8"
    end
    on_arm do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.40/upstate_0.2.40_linux_arm64.tar.gz"
      sha256 "a52644399a6c88e9b154efe9c14c366b1ea9d9741dff9d9ad9f6a83b7581309e"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
