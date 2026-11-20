class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.33/upstate_0.2.33_darwin_amd64.tar.gz"
      sha256 "13eea97c90796c4487148562f8671324a39b2aca91fc9970fc2261ed0be5f96d"
    end
    on_arm do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.33/upstate_0.2.33_darwin_arm64.tar.gz"
      sha256 "72d79b346475e71d1657d25e951a976962e44f3aa7c86d000b55de0773b9b45a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.33/upstate_0.2.33_linux_amd64.tar.gz"
      sha256 "3bd536eaad85e491964fae5317af7c2b95f1e843d13a44981dac2ef5fe783928"
    end
    on_arm do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.33/upstate_0.2.33_linux_arm64.tar.gz"
      sha256 "cf8562b0375b417506c5c2823b8e8609e747266c001a5c31519bb2c840388562"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
