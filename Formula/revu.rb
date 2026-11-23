class Revu < Formula
  desc "Your GitHub pull requests, reviewed in the terminal"
  homepage "https://cjhwong.github.io/revu/"
  license "MIT"

  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.6.0/revu-aarch64-apple-darwin.tar.gz"
      sha256 "a2264c77be37f9a6830c667bebadbc27d83fabb9a9baf287c54c51d241aad621"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.6.0/revu-x86_64-apple-darwin.tar.gz"
      sha256 "25e95f30c37c5525c4c072f9a89669bc0f866614a2172216bae086d181a4e4b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CJHwong/revu/releases/download/v0.6.0/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "07dcde518c10ce59cbd30a30e363816784c85337ff462c05d98d32d3f01ac25c"
    end
    on_intel do
      url "https://github.com/CJHwong/revu/releases/download/v0.6.0/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "24bce408a8673622ebaf16b9370ed19d5b9e798a469a33951093480467acd5bf"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_predicate bin/"revu", :executable?
  end
end
