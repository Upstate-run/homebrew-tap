class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.28/upstate_0.2.28_darwin_amd64.tar.gz"
      sha256 "75d19b5d0fcf64fb53cdc01661d67f0aca033d9bf5dec8a21ddd0ff768078059"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.28/upstate_0.2.28_darwin_arm64.tar.gz"
      sha256 "4967db62bddbcef16aea33dfe588d674fab164bbb6e2c04f0b44f04a0bb934f4"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.28/upstate_0.2.28_linux_amd64.tar.gz"
      sha256 "c5c679cb13e623b01cf621ea3a0499eb006d1af0378d8f98b8c972bf2784ae92"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.28/upstate_0.2.28_linux_arm64.tar.gz"
      sha256 "e623747e32c58d7af59003f427ca278f8ef96bdddea3982d9ea29c00efb20d4f"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
