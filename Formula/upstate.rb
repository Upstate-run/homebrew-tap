class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.3/upstate_0.2.3_darwin_amd64.tar.gz"
      sha256 "cce8b9feb0e0ada7a6c3a5a85007d50fcc5729eedcfa8ecf1828aade5da1b679"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.3/upstate_0.2.3_darwin_arm64.tar.gz"
      sha256 "06664eae3fe4abb640234aeadba356f9d940beb49ca53f620bb123883b059dfe"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.3/upstate_0.2.3_linux_amd64.tar.gz"
      sha256 "46f35eb5229e37efc5d8d4b59de9a4780e33b7cddb81a8e7c66af3fd7e46a012"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.3/upstate_0.2.3_linux_arm64.tar.gz"
      sha256 "92d9adc0381c7af9e3afe13256c67ef877979a775cf9179679d3a4aa2d6cd1ad"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
