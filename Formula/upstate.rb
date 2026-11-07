class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.15/upstate_0.2.15_darwin_amd64.tar.gz"
      sha256 "2fbbfc1e9dfb57ff06fc6c30a665cb843430c09a0c51a495be04cdd1be7922a6"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.15/upstate_0.2.15_darwin_arm64.tar.gz"
      sha256 "86effcdcec9f524346a146646380fb90d4f7029499afd1288b17959df221363b"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.15/upstate_0.2.15_linux_amd64.tar.gz"
      sha256 "de64774b951e6724dff4226160de8f233a26ddf0c889f91154cc139b514f4c14"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.15/upstate_0.2.15_linux_arm64.tar.gz"
      sha256 "84380649e436f5f69fd32fa6fbb97efeb576fce29ca6f6987e05351ef54cb4d2"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
