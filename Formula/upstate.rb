class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.5/upstate_0.2.5_darwin_amd64.tar.gz"
      sha256 "88085abeca37680bc0ccbcc4909a633ffff49e019204b901cced2790ea636557"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.5/upstate_0.2.5_darwin_arm64.tar.gz"
      sha256 "d501a79b040fd75f1bd6036011abb8af27d479ef8df5120182ce43dad717fca8"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.5/upstate_0.2.5_linux_amd64.tar.gz"
      sha256 "c34a927a4d286edbc19fcefe99b63d2a9313925ddf5740a34350990f9c9ade81"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.5/upstate_0.2.5_linux_arm64.tar.gz"
      sha256 "0dfb78a319cb42c0c1c2c0e7c190f88926c277b02774a94c9c7b4e6727732172"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
