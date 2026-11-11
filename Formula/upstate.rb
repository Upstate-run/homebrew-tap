class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.17/upstate_0.2.17_darwin_amd64.tar.gz"
      sha256 "46f4f88373372c218472690278ed85b26288366384fe5e0c9a90f413ed93022d"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.17/upstate_0.2.17_darwin_arm64.tar.gz"
      sha256 "40033a1272b5f54191665eea3ed53b95ab39873e1b43def34cc49f2c32d246b8"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.17/upstate_0.2.17_linux_amd64.tar.gz"
      sha256 "371d112db05ec6433e1f84f852e06262daa8051f25b6c9955b90ed3c76dc3639"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.17/upstate_0.2.17_linux_arm64.tar.gz"
      sha256 "c43d5dea56dac68b8b8ab7bf69903ec99a19cb48a0046b2db134fb9ba29a625e"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
