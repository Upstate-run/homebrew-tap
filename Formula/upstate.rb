class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.31/upstate_0.2.31_darwin_amd64.tar.gz"
      sha256 "e17550da9391e005badb9f9f3cc7d7bea4581f547168d5c3a750b486a22ff10c"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.31/upstate_0.2.31_darwin_arm64.tar.gz"
      sha256 "860d1d367c676b6cdd183f73877d6f782f8f1ca4be0e8dc085a759e8b5aa7df1"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.31/upstate_0.2.31_linux_amd64.tar.gz"
      sha256 "2f77766af66b402c2d3f6fa9734c096ac41a7a1f146f5d3306717b74ad35ee79"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.31/upstate_0.2.31_linux_arm64.tar.gz"
      sha256 "0685a1b762de9bc905e0bc516c32e2344373fe6273fd66ab53a9f982e55b5074"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
