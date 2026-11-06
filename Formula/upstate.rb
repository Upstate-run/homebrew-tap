class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.14/upstate_0.2.14_darwin_amd64.tar.gz"
      sha256 "ecef1b03dac598abb130c2aa6e38a94f158d2dccbe131b9acb5779acaefc4d3c"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.14/upstate_0.2.14_darwin_arm64.tar.gz"
      sha256 "283d30528f47d5a355e589c1a66713d4b3b2c1b1cb5150f75c5cb1e56dd08fca"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.14/upstate_0.2.14_linux_amd64.tar.gz"
      sha256 "9d0ad71c22c655a4747109779c22bdd5c15814735b4cf76d5da5c9ef259fa86e"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.14/upstate_0.2.14_linux_arm64.tar.gz"
      sha256 "2cdcb0b5aae5498fe107ca24e2770018191f040f34da9a14a05aa1ccaf4405eb"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
