class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.6/upstate_0.2.6_darwin_amd64.tar.gz"
      sha256 "f2fa6288d39b3638188bb7f65c061fd6db2e74bea5e21b06d0e2acbc05f86994"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.6/upstate_0.2.6_darwin_arm64.tar.gz"
      sha256 "72296864dd3e3f3028dea9f7b16b128cd4009c456edc820c0075735cfb023aa5"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.6/upstate_0.2.6_linux_amd64.tar.gz"
      sha256 "a986f660118c0eacabf9cb9ad1f2695b03f34eb2485d4059ef27284812b74bf4"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.6/upstate_0.2.6_linux_arm64.tar.gz"
      sha256 "82e665f6ef9b6218809a333225cbdf221492d6dff61207ae27f725868e9d5157"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
