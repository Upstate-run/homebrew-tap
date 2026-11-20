class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.34/upstate_0.2.34_darwin_amd64.tar.gz"
      sha256 "6a88cea374611a751587b6c90bcd095742bfe5dcfdf19bdff94314adc0109338"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.34/upstate_0.2.34_darwin_arm64.tar.gz"
      sha256 "1040338fb0c653fbc411fd79f34fac095af254f1b89d802b3d80551108712f5a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.34/upstate_0.2.34_linux_amd64.tar.gz"
      sha256 "122f0a57757e214f898b1c2292ce40952761d72d3196e44f0d3d2d3f3114a15f"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.34/upstate_0.2.34_linux_arm64.tar.gz"
      sha256 "d76f41e4ce8051a482a17512be89f10db7a3683659d726efca860eb591a7d550"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
