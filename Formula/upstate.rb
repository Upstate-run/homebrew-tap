class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.36/upstate_0.2.36_darwin_amd64.tar.gz"
      sha256 "b297d88143712fed7aaeeb0e4809412ee64da43c39118e50c8d5aa0810ec3139"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.36/upstate_0.2.36_darwin_arm64.tar.gz"
      sha256 "1d6c446e28cce4f2d46f65f650d29032ac3dfbe85bbf49c1c604b85a5af8ca21"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.36/upstate_0.2.36_linux_amd64.tar.gz"
      sha256 "9093e64dc2d6033d362f5d37dd4b2316eed324b7fe208939fbe9888f141f0f32"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.36/upstate_0.2.36_linux_arm64.tar.gz"
      sha256 "146845295bbd5eba63aabf705c7cf64c8a9ac6c60b9980d480dc36e76bd06da7"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
