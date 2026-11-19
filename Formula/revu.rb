class Revu < Formula
  desc "Your GitHub pull requests, reviewed in the terminal"
  homepage "https://cjhwong.github.io/revu/"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.4.2/revu-aarch64-apple-darwin.tar.gz"
      sha256 "bbd29dc3b0d2dd054c9daaa512ad221521fc03b06d5461c6fcb6386b766ff281"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.4.2/revu-x86_64-apple-darwin.tar.gz"
      sha256 "0480a087528a9ca1205a365c23a279c5b880b8b9645ae885e991e669dbbb0e8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.4.2/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22c38476049489dc68c003b8ed13bb8225d0c86c63e2d592eb151d0a2a0c3c9d"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.4.2/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8b5e5e264e7a6d06ab129f35ad5bdacf364237ba13950a8c0fc310733c43aed3"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_predicate bin/"revu", :executable?
  end
end
