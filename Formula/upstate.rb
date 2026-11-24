class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.cloud"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.39/upstate_0.2.39_darwin_amd64.tar.gz"
      sha256 "cc95e2a2da06d5493dc244621c874df30d958c517df9f724f743cdec28cf000a"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.39/upstate_0.2.39_darwin_arm64.tar.gz"
      sha256 "a61b66fb952fbcabd083afbf3ec52df81690c7473e60ff9190c92dbc0006d939"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.39/upstate_0.2.39_linux_amd64.tar.gz"
      sha256 "29d555a84339ec812110c92f21e7e9b84cb3f4a27bfd701788f5ec1ac59b3406"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.2.39/upstate_0.2.39_linux_arm64.tar.gz"
      sha256 "194549913df56d1c68a086f2f90a24322edd84736ed2d0d0b272fbfc926bfb5b"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
