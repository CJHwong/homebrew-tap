class Revu < Formula
  desc "Your GitHub pull requests, reviewed in the terminal"
  homepage "https://cjhwong.github.io/revu/"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.2.1/revu-aarch64-apple-darwin.tar.gz"
      sha256 "718ab550c0636aebe0c16068f03b1cff316de3efd4d14b800f3907b5b9e60a2f"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.2.1/revu-x86_64-apple-darwin.tar.gz"
      sha256 "b96316903843d223c429b078ff4c545a59f8e3f6b00211448f58d31691995b67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.2.1/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aa70c6ea6e847c586f2241197b938f412d645dcee3099789e248033c808d4eed"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.2.1/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f2a86c71a972501e18ce2b7d2b4a4f63fa6480762c3014c83764e56d09113c68"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_predicate bin/"revu", :executable?
  end
end
