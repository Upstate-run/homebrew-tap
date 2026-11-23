class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.37/upstate_0.2.37_darwin_amd64.tar.gz"
      sha256 "bcc8b03304c5d771ce5d19f4c8c7a317ea0439d60537fb49d0d201dc28dba039"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.37/upstate_0.2.37_darwin_arm64.tar.gz"
      sha256 "347859dd971dc766746d5b6f0d0a5b7018c8b189880c25832519d32f4f72ac82"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.37/upstate_0.2.37_linux_amd64.tar.gz"
      sha256 "f98ce3b36dcc865de2a34beed67259a1c54e24768973db3c5d57e48df5875c3e"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.37/upstate_0.2.37_linux_arm64.tar.gz"
      sha256 "713e2e2d95edd2c604d61c2e42383a6c16989d20c323052c4e8eed9784ba03fb"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
