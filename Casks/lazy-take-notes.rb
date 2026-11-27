cask "lazy-take-notes" do
  version "0.3.5"
  sha256 "2aef1d3e5ac8fb3a0e4c6d99082266b30ba65091dca85d6dbddac02343ffde9a"

  url "https://github.com/CJHwong/lazy-take-notes/releases/download/v#{version}/Lazy-Take-Notes-arm64-macos.zip"
  name "Lazy Take Notes"
  desc "Takes meeting notes from your mic and system audio"
  homepage "https://github.com/CJHwong/lazy-take-notes"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Lazy Take Notes.app"
  # The app's program runs the command line when it gets arguments.
  binary "#{appdir}/Lazy Take Notes.app/Contents/MacOS/lazy-take-notes"

  # The app has no Developer ID signature, so Gatekeeper refuses it while
  # it carries the download mark that Homebrew adds. Installing from this
  # tap is the trust decision.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/Lazy Take Notes.app"],
        writable_paths: ["Lazy Take Notes.app"],
        writable_base:  :appdir
  end

  zap trash: [
    "~/Library/Application Support/lazy-take-notes",
    "~/Library/Caches/lazy-take-notes",
  ]
end
