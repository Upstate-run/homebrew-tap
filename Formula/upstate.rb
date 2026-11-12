class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.19/upstate_0.2.19_darwin_amd64.tar.gz"
      sha256 "f5b9a9d34a8a9960fcef42e3879d5794bd38f4819885b275bc1953c387dcedd1"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.19/upstate_0.2.19_darwin_arm64.tar.gz"
      sha256 "4c9d9ba15f6d0e973a7dce9f20299500ea0608fbf4158f0c1109662dd346017f"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.19/upstate_0.2.19_linux_amd64.tar.gz"
      sha256 "9a4422b93cbeff9d502ef4e7e71f74e9b09c19cfd6f89f1136202c37b2c5ecdf"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.19/upstate_0.2.19_linux_arm64.tar.gz"
      sha256 "3928a8b1a573db8e7bcbbc3e17babfd0ddb6e0998bcba31201c9852e62201912"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
