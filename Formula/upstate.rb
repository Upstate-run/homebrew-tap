class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.12/upstate_0.2.12_darwin_amd64.tar.gz"
      sha256 "7d1ed7aa77813858aa60a5326ffa19a7102ab22d96da41ad058c22a1eaf7a140"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.12/upstate_0.2.12_darwin_arm64.tar.gz"
      sha256 "81accc4ed00e94ae59d451e3782d5b252a2d8d7f41c557b0adaebefc6b332404"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.12/upstate_0.2.12_linux_amd64.tar.gz"
      sha256 "6bc470f0f6ac6c9ebc54c4f661c8171ba80115302a72f7e8a4865c6f18a7ff7d"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.12/upstate_0.2.12_linux_arm64.tar.gz"
      sha256 "c4ddb6c7cb323a4418d6b6f290f6993747c34e1796821981b2741696d1dde86b"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
