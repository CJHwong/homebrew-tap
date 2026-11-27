class Revu < Formula
  desc "Your GitHub pull requests, reviewed in the terminal"
  homepage "https://cjhwong.github.io/revu/"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.8.1/revu-aarch64-apple-darwin.tar.gz"
      sha256 "3baf1c142dad425cf196551048d61d5291cbf83dcd8152f6d5f2cfbd9816f680"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.8.1/revu-x86_64-apple-darwin.tar.gz"
      sha256 "0a4e9ef00a3c3c9f95ba8e605b0b52c4b4847c765f1b764304bc10582412c821"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.8.1/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "53c279ece8e4fb90714de065cdb059afbefc67a0cd9f2e91e6c87ff68f88813f"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.8.1/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af565c92b4007c4e4e55fab4a615578ed856837d062d9dda1a5bce07f2c57c7c"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_predicate bin/"revu", :executable?
  end
end
