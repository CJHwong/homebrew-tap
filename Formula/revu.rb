class Revu < Formula
  desc "Your GitHub pull requests, reviewed in the terminal"
  homepage "https://cjhwong.github.io/revu/"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.7.0/revu-aarch64-apple-darwin.tar.gz"
      sha256 "60373219c507c642e6b52611e811a7ac4d5dfefe7b1b63495a1677d094f75ff6"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.7.0/revu-x86_64-apple-darwin.tar.gz"
      sha256 "ed6d21385d0cfc2905ab5b3b012a58935c6612bbc9255c3449be3b28d3bb8a12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.7.0/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "72e31bd1ef61d3dbd63bd2bf564c634c78c99b1b1449cd1cdede6fe5ec7c09cf"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.7.0/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8cdc452d3b0c759bdf46fbfc72ec8da63a14be28a4dd45eee789ed3ef838687f"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_predicate bin/"revu", :executable?
  end
end
