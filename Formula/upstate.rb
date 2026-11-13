class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.23/upstate_0.2.23_darwin_amd64.tar.gz"
      sha256 "ff112020d0a704b1552d96ba1a7c17f9f2d96f666c10f61912ce53389cb9b840"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.23/upstate_0.2.23_darwin_arm64.tar.gz"
      sha256 "42ade6389822f521bf4ec593ee96c751c0e0a93466800d58745800f09e5a8af5"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.23/upstate_0.2.23_linux_amd64.tar.gz"
      sha256 "8031d3cc438e29b394b330f91635b493a5a28a914e5497fc0b1f88cef5eb7921"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.23/upstate_0.2.23_linux_arm64.tar.gz"
      sha256 "7101e22ec1448ad3c5f63a5d5e150311fadb5e55f19caea4ca9e6cf5d1292fef"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
