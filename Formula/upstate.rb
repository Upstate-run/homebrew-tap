class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.22/upstate_0.2.22_darwin_amd64.tar.gz"
      sha256 "633197c34c1f370469c6901de38e3bbb9da8e1bbadd29a25df26eee157739032"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.22/upstate_0.2.22_darwin_arm64.tar.gz"
      sha256 "901faa911693e9aa232152f410fe19391cf59eaeeee345f5b890d071b969a7ce"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.22/upstate_0.2.22_linux_amd64.tar.gz"
      sha256 "4477d8d9cb680069ef55be6b769a015ba8d68ca70e3447d8fcedb3842ee719e0"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.22/upstate_0.2.22_linux_arm64.tar.gz"
      sha256 "63c4e4e40a89789b89b59898fc0a68e915500fa4c604afa65eb8bb01f3f2c4cb"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
