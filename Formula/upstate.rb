class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.27/upstate_0.2.27_darwin_amd64.tar.gz"
      sha256 "b66b3afd8010a70a171802edc8c4786857ba78edd3b4a439486363196668ff43"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.27/upstate_0.2.27_darwin_arm64.tar.gz"
      sha256 "5faf448fe4e2a2078fea44d62dc66e4baf531f4387a8dac62c60c2ac8d2fa55d"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.27/upstate_0.2.27_linux_amd64.tar.gz"
      sha256 "8a97ebdbf6b54638ffd041a39e7fe3b68083e1a909b0a879b890c5b290fa97e9"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.27/upstate_0.2.27_linux_arm64.tar.gz"
      sha256 "b3faf4f3d09cdccae8eced1667d4cfa07b1fdab5f5f4a414ecf2935663b739b9"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
