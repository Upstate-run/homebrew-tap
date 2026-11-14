class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.25/upstate_0.2.25_darwin_amd64.tar.gz"
      sha256 "7f46c5d2b9a84bd74c1140071e444f64adf538213e87ef9bca0fed3fa382b2dd"
    end
    on_arm do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.25/upstate_0.2.25_darwin_arm64.tar.gz"
      sha256 "4e953d9f6c120ef56b377440af741063f292f0a482d9c3a941157389fb1cdc09"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.25/upstate_0.2.25_linux_amd64.tar.gz"
      sha256 "bcb5feeecd9d679c7882c6d3954a370fdd3fdb273719c86e74d815b85e77ad53"
    end
    on_arm do
      url "https://github.com/Upstate-run/cli-releases/releases/download/v0.2.25/upstate_0.2.25_linux_arm64.tar.gz"
      sha256 "b3dcebb5f55b885a727a22347551df84f52a863466b36110c67617db9839394d"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
