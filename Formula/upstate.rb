class Upstate < Formula
  desc "Deployment Receipts for Kamal production"
  homepage "https://upstate.run"
  version "0.1.5"
  on_macos do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.1.5/upstate_0.1.5_darwin_amd64.tar.gz"
      sha256 "f26e335a493d0ab9236d7dfafbaf3cf2a4c9cc4c4d14f1d99337e8d62ee54cac"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.1.5/upstate_0.1.5_darwin_arm64.tar.gz"
      sha256 "cd3eab0b2a62a9491f4a4940b7721ad1413c960642fb22a9037a7b1e6d9573b0"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.1.5/upstate_0.1.5_linux_amd64.tar.gz"
      sha256 "149821c512036dcea8e60fd6a4193b47513f73c2c8861073470703549f2d8726"
    end
    on_arm do
      url "https://github.com/upstate-run/cli-releases/releases/download/v0.1.5/upstate_0.1.5_linux_arm64.tar.gz"
      sha256 "8362a40bd77149d0eca389acdc2d0c74a05e49a6534bfd09d215e64b984ed77c"
    end
  end
  def install
    bin.install "upstate"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/upstate version")
  end
end
