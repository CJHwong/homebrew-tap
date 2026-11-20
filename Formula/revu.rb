class Revu < Formula
  desc "Your GitHub pull requests, reviewed in the terminal"
  homepage "https://cjhwong.github.io/revu/"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.5.1/revu-aarch64-apple-darwin.tar.gz"
      sha256 "69d589af255341c009fe178fceda3740018e20d17f6c247625df9e0bb05dfa68"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.5.1/revu-x86_64-apple-darwin.tar.gz"
      sha256 "eccb1db486a94247091b5978782f20db6fd783738a51a5c22a7cd21f36d03d10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.5.1/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7054cf1ff9d990523f35549210d00ebc81b2d28bdb094e9b2267c4a58bd64769"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.5.1/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ca8946f871daca5e2ae87dedbe9cb2da428a5eaf32c63b9058c457d05712ddac"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_predicate bin/"revu", :executable?
  end
end
