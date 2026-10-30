class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.9/upstate_0.2.9_darwin_amd64.tar.gz"
      sha256 "2da2e27ac51784ec04d4f4417edf5f2fea82c5ec72408debf44878f1b1c3c584"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.9/upstate_0.2.9_darwin_arm64.tar.gz"
      sha256 "319588ea30680c390f5082eb4cf1c7711282ad548071db3c819ce5e8984d80c5"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.9/upstate_0.2.9_linux_amd64.tar.gz"
      sha256 "28176448deab8f1f6b5227ede06fcb6764c1337b39a83b9d9d7a185c0a7c5ab1"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.9/upstate_0.2.9_linux_arm64.tar.gz"
      sha256 "191b64ce164fd7cc102a8c776a07a4eb0cddb24665fa8f0c129856fefec7e2e7"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
