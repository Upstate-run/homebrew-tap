class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.0/upstate_0.2.0_darwin_amd64.tar.gz"
      sha256 "12a9678aae15eaec671e881d88b9dd9a25f7c4eb726907158d65b6f9fb137967"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.0/upstate_0.2.0_darwin_arm64.tar.gz"
      sha256 "9427eaabc69be3135e8fdc2db082f18a84cf259517ce1ca602103aadbc753c4a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.0/upstate_0.2.0_linux_amd64.tar.gz"
      sha256 "76b5ac1e0a61bb4eab0c359d27c171e990ef84e26ce2fcec2456af7320affa6a"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.0/upstate_0.2.0_linux_arm64.tar.gz"
      sha256 "ee2e09fabe01c39b51ceada2d1a57fc2f3c931616cb1664f373f656fc5d4de08"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
