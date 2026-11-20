class Revu < Formula
  desc "Your GitHub pull requests, reviewed in the terminal"
  homepage "https://cjhwong.github.io/revu/"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.5.0/revu-aarch64-apple-darwin.tar.gz"
      sha256 "00995d6b6225e85b3807936a7c7226fc27d6e11c2064ca34744647ce24c9c338"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.5.0/revu-x86_64-apple-darwin.tar.gz"
      sha256 "de10ad212703afa4a9ea15981e6632615e5a8343cecbc6c6df2197fac785c2e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.5.0/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "08a17eef5dc7c07e33cce3c99521d67491225d74db64e13d9b15043c17042fe8"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.5.0/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "36d8b1bce9ecc450aad92a2910a99bd3c78d961a2d5c2fbc7d966cc4e1c6e8cd"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_predicate bin/"revu", :executable?
  end
end
