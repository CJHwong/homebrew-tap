class Revu < Formula
  desc "Your GitHub pull requests, reviewed in the terminal"
  homepage "https://cjhwong.github.io/revu/"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.4.0/revu-aarch64-apple-darwin.tar.gz"
      sha256 "634f232b4080718ccfcf3ebe683ad880f9e09d400dd37fda40db80866755cc84"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.4.0/revu-x86_64-apple-darwin.tar.gz"
      sha256 "587c3ecab88d612c6c52f0dda85c9d56611702f4f63aa4b8884561f860f82659"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.4.0/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "52e068f02a907695398f4cf01d35aa8b158cf9e70dd259a806c89cc7edfb95fc"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.4.0/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf3a76c260e131c005f65aff452f50323ebf6741400a89957cd6360c34912fe1"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_predicate bin/"revu", :executable?
  end
end
