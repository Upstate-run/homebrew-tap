class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.10/upstate_0.2.10_darwin_amd64.tar.gz"
      sha256 "6865847ffb961d4821ab1ec27fdc5a5e0df25948845fa516fde2c447c6cad3a8"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.10/upstate_0.2.10_darwin_arm64.tar.gz"
      sha256 "30f79823d2ef6eabb45802d7aae5c10c5f80577d525d12413a76420b8fe9e918"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.10/upstate_0.2.10_linux_amd64.tar.gz"
      sha256 "382e23cdf64131795b2dfd1be06d676ffe8d71473b4ac6662589a311ab13489a"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.10/upstate_0.2.10_linux_arm64.tar.gz"
      sha256 "6d8d0e37d489c899966b9b13dbef940032bc0d27e092828a21721656e7f60c4d"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
