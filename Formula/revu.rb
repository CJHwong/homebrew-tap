class Revu < Formula
  desc "Your GitHub pull requests, reviewed in the terminal"
  homepage "https://cjhwong.github.io/revu/"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.1.0/revu-aarch64-apple-darwin.tar.gz"
      sha256 "35f79e7ea1c56a7e4f87864a04d5bac72d46109b2177dd072306e1946781cc57"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.1.0/revu-x86_64-apple-darwin.tar.gz"
      sha256 "f3cfeaa6f31cadfc41726cc8c7f4f1f468c355a553ccb397146b461bced6c8eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.1.0/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4a29d56f28cf56ae17da1f63f1ab8a32e7a25ed43dbc917f070f20fea5e4a71b"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.1.0/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ed8f64980bad4d70fc0d6e2a80b0f92d5160f10a3a87db7db082f8ef16766e7b"
    end
  end

  depends_on "gh"

  def install
    bin.install "revu"
  end

  test do
    assert_predicate bin/"revu", :executable?
  end
end
