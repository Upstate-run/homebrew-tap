class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.13/upstate_0.2.13_darwin_amd64.tar.gz"
      sha256 "ab49653e94edbd09407d6c039bedad9003278ac4c19a1336f79d8aa29a153ce0"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.13/upstate_0.2.13_darwin_arm64.tar.gz"
      sha256 "eb8dd6931d40e68a6891662dab3e187ab747007f4fe80ecb59b8b53d1fe9bec0"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.13/upstate_0.2.13_linux_amd64.tar.gz"
      sha256 "a0b5ca4bd2828b39e95f87cfe08fe7f0c238cfeb8ce9eaa45c1703c5c6510ad8"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.13/upstate_0.2.13_linux_arm64.tar.gz"
      sha256 "58272fee1b524eb2a9c425c2c4b91e6d027bab5b0b90dc4ef849515d61811cb3"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
