class Revu < Formula
  desc "Your GitHub pull requests, reviewed in the terminal"
  homepage "https://cjhwong.github.io/revu/"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.4.1/revu-aarch64-apple-darwin.tar.gz"
      sha256 "e355a72ae5c4e2129de03e7437aaa5fd7e412be760fca350d757bdd678ca4656"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.4.1/revu-x86_64-apple-darwin.tar.gz"
      sha256 "21b0f6d512d827ba18ea28a2edec2ee9c92ee6d5508d15b5b7ca4b920f386bc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.4.1/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "63005a53ffa11ca6c32870941295956f351977b11edf214f9211fd8a79997438"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.4.1/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "34cf34a2f5b7bf618df1d5c4a819cb2a3c2a4b27886dee89edc66467a8171416"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_predicate bin/"revu", :executable?
  end
end
