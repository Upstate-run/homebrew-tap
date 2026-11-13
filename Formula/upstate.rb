class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.20/upstate_0.2.20_darwin_amd64.tar.gz"
      sha256 "3824211de6d8d640a297cd134cf70e17a16d6d99b47449be4d66370d704713a9"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.20/upstate_0.2.20_darwin_arm64.tar.gz"
      sha256 "0acb46334ff6dfa930b6ec47855d1150f0c7d58658190846d253be905d37abc5"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.20/upstate_0.2.20_linux_amd64.tar.gz"
      sha256 "6810d9062eba07b690eff1e05a2211f29c36970865094bca24f116337cd921ac"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.20/upstate_0.2.20_linux_arm64.tar.gz"
      sha256 "fc64232bf7898f630ca6666682b1de10f34e5b80ed4ee278a36fe4b14f7e8f3a"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
