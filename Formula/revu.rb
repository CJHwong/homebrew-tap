class Revu < Formula
  desc "Your GitHub pull requests, reviewed in the terminal"
  homepage "https://cjhwong.github.io/revu/"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.2.0/revu-aarch64-apple-darwin.tar.gz"
      sha256 "fbaba237decf12c18d1b2a8ea54873f77da1836e0e93de2a7cd9e87c9a5ba52a"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.2.0/revu-x86_64-apple-darwin.tar.gz"
      sha256 "3b86feb045513ccf82c5426b9b3655203b74492aa77e3b32f8bb7aca7cd7389e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.2.0/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7b7b96cfd026625014ee67f3e11d41b4d2112124efb6672262e027760bcbd2bd"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.2.0/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "640e64b79b47640c3544cfd02c6d11351eeb7d5cf79f8d38a17c2c82a8920340"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_predicate bin/"revu", :executable?
  end
end
