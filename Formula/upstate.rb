class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.24/upstate_0.2.24_darwin_amd64.tar.gz"
      sha256 "84b73cc38590fa465635603341d38ecca4de720e8a0705a57040418af771a9ee"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.24/upstate_0.2.24_darwin_arm64.tar.gz"
      sha256 "09005ed5db26d072b4c5276069da43caeee2e9932de1c77a1c5f101e07523d9d"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.24/upstate_0.2.24_linux_amd64.tar.gz"
      sha256 "5be893d94019a00244ad561bdd01a2c2b23c30b4384a773e53efff671be3872c"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.24/upstate_0.2.24_linux_arm64.tar.gz"
      sha256 "e40395e21f0c2f478842343b91ef5393461da73a542c5c735426f96e07ba43d9"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
