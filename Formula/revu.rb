class Revu < Formula
  desc "Your GitHub pull requests, reviewed in the terminal"
  homepage "https://cjhwong.github.io/revu/"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.1.1/revu-aarch64-apple-darwin.tar.gz"
      sha256 "66ec6f6a807ee958ea39da2d739ff72715e151805e9b1a00af624b3707bbf435"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.1.1/revu-x86_64-apple-darwin.tar.gz"
      sha256 "2e1d72bd70d9b08513f78169dde3687712a593b560ec8f1607a5a949fc57cdee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.1.1/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e923fd7142cc5f84a495dd7ba1632a22a8dda4abd00d0de3bf9b91db6edbeb0f"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.1.1/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d3c7f4d865fa4792b0b42b2b781c796b2281317fd042fe44990703a5c71dfce5"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_predicate bin/"revu", :executable?
  end
end
