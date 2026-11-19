class Revu < Formula
  desc "Your GitHub pull requests, reviewed in the terminal"
  homepage "https://cjhwong.github.io/revu/"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.3.0/revu-aarch64-apple-darwin.tar.gz"
      sha256 "c6f69991288cb45bd10896798925d470b46be53c44fd9254c6e7289a4265e4b8"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.3.0/revu-x86_64-apple-darwin.tar.gz"
      sha256 "4fced9f187621776e4d7394494276b01a984067af070b4674d061f25fe9185cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.3.0/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c03d440f7e97fd70933ed181dab06e4dcc026888a87627b5d8192ad41e08de94"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.3.0/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7d1e453a95917e5c6e6678cf71d4945213fed5f7081efd8f1d7646bf54bab620"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_predicate bin/"revu", :executable?
  end
end
