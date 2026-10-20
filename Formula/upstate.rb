class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.1.6/upstate_0.1.6_darwin_amd64.tar.gz"
      sha256 "3501c8e99d0af159970ef3098127b783e470a53b978742ead610f7f6f7039dfc"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.1.6/upstate_0.1.6_darwin_arm64.tar.gz"
      sha256 "e0e3c6f0e8a875883150c5c90e82165c4554c8afa3b6b50581527e462fda5c4b"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.1.6/upstate_0.1.6_linux_amd64.tar.gz"
      sha256 "bff57b23ba773d7b6d93fa212ee4274e768441877405e21f5ecca95ecd708787"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.1.6/upstate_0.1.6_linux_arm64.tar.gz"
      sha256 "156aff34c458662f984267096252fe34be3cf7b7e5c5525d09e345cab87e9a29"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
