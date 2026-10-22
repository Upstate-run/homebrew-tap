class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.4/upstate_0.2.4_darwin_amd64.tar.gz"
      sha256 "cbeb06d01a668d6ef354044d9253d08b06ac32c85d1cdd1d8aa03090296a4345"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.4/upstate_0.2.4_darwin_arm64.tar.gz"
      sha256 "d686aaddeabb066f2234f264bec50bb45bf2c2b6825b00f0b8ffe30450d8d1ac"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.4/upstate_0.2.4_linux_amd64.tar.gz"
      sha256 "e9134fe68fec13092e066095d8d70dbe93bf4105d1ada99978813521f3ce44dc"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.4/upstate_0.2.4_linux_arm64.tar.gz"
      sha256 "e9fa360402889daf84ab5e3b1b0865f71383245c3779de46b9a18fba3641babf"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
