class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.38/upstate_0.2.38_darwin_amd64.tar.gz"
      sha256 "c3ca1b3310ff57d67ced57d27a241de58f4dee90ad620e72782250e0dc138575"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.38/upstate_0.2.38_darwin_arm64.tar.gz"
      sha256 "2a8ec13b638d421fc7fb5650e84569f3f85888eadbfbec1ce484645f13a1330d"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.38/upstate_0.2.38_linux_amd64.tar.gz"
      sha256 "d940b6c37ed0adde3b7d99ce682ed3e768555026b1f7f48ab780a51211b6e1db"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.38/upstate_0.2.38_linux_arm64.tar.gz"
      sha256 "475ab43706559f5ad83f93becc9e622ad16115e64b52e63d5b3233c1a5a6ccef"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
