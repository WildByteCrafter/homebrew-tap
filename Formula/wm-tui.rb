class WmTui < Formula
  desc "WireMock TUI"
  homepage "https://github.com/WildByteCrafter/wiremock-tui"
  version "v0.4.0"

  on_macos do
    url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v0.4.0/wm-tui-v0.4.0-apple-darwin-universal.tar.gz"
    sha256 "98015c2b89266c4ff33d85a2f51ae3a881ebc5b66530df4805bb3ee0dc2ad844"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v0.4.0/wm-tui-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c1238916264a6c06a26e7a4b7c6dba19eab3bbe8ea6a401c5fb11a21f2e60a75"
    else
      url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v0.4.0/wm-tui-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "56db71adb13e293452fe46715c0508a2313f3302c83a21e46a21cbf9ea2b7766"
    end
  end

  def install
    bin.install "wm-tui"
  end

  test do
    system "#{bin}/wm-tui", "--version"
  end
end
