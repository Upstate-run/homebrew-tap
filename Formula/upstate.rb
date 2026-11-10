class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.16/upstate_0.2.16_darwin_amd64.tar.gz"
      sha256 "4a51854861e6cd473a95e912b793e7b78690d6fcaf32bd6e04bdae4b6f6e314e"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.16/upstate_0.2.16_darwin_arm64.tar.gz"
      sha256 "e3977a835dafdb9f66a9b620db8e2020fc8e10889f22913f4e45997234a60906"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.16/upstate_0.2.16_linux_amd64.tar.gz"
      sha256 "450b22be8d582d94a1f917a6e1cedcc358eddd240226e332282f6ea20dc1ad88"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.16/upstate_0.2.16_linux_arm64.tar.gz"
      sha256 "7f129bd569e52252d98cf9d7d5e77efd310c6e57f948ed4466f512eb8a9b5e23"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
