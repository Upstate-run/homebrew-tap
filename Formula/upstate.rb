class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.11/upstate_0.2.11_darwin_amd64.tar.gz"
      sha256 "1558ce922e2818da1930a37afd5e9d5f3bf9037e78b7c601b9a31eb9fa15544d"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.11/upstate_0.2.11_darwin_arm64.tar.gz"
      sha256 "633c52785ea3208604602fc2d3a466e77895a2a3001bfb1748713f5b0b280e58"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.11/upstate_0.2.11_linux_amd64.tar.gz"
      sha256 "de08df3abd337735f1cada99432148a58739c4d0a2a94cb60681f9bd51395990"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.11/upstate_0.2.11_linux_arm64.tar.gz"
      sha256 "a82925ecd3f0d1d4d5d4d3907f8bf4ea574d97856c3fc7e875345b76a6b2d67d"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
