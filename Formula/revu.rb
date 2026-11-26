class Revu < Formula
  desc "Your GitHub pull requests, reviewed in the terminal"
  homepage "https://cjhwong.github.io/revu/"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.8.0/revu-aarch64-apple-darwin.tar.gz"
      sha256 "7e76712b38d2c63f39003d585ec13a174fc763782b5ad359e57e62808603bf5e"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.8.0/revu-x86_64-apple-darwin.tar.gz"
      sha256 "c0f9b79cb18e3b7d8be765590595fd32989002323b83a73ee8062b45d6078dc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.8.0/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e97be2aa3a7accbb5c1ad9886f9731bb15b20f94e941b4e855527e40898c428e"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.8.0/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3efac33db98c73f64d9b01acdaee78f1376984dbf5125d79b46feec6681103d0"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_predicate bin/"revu", :executable?
  end
end
