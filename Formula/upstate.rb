class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.21/upstate_0.2.21_darwin_amd64.tar.gz"
      sha256 "6e3723c4e4d34b0256a98d9b782cd6e9f22cd79da0f4471dd4a8877c6846bd97"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.21/upstate_0.2.21_darwin_arm64.tar.gz"
      sha256 "76caf96810f0dc9a7ef5f6303e15847fe8b07c2ef21925ef417b705302f91947"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.21/upstate_0.2.21_linux_amd64.tar.gz"
      sha256 "b8222aa7e69cc00e886df43c363ee681c8080000896a4e8d30ed6e59b2508ba1"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.21/upstate_0.2.21_linux_arm64.tar.gz"
      sha256 "77c0e582f4ae3b714c0be7a09aca8dbc00fc08577fad5d15479c0f9c388092e5"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
