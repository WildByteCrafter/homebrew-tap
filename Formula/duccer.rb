class Duccer < Formula
  desc "WireMock TUI"
  homepage "https://github.com/WildByteCrafter/duccer"
  version "v1.0.4"

  on_macos do
    url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v1.0.4/duccer-v1.0.4-apple-darwin-universal.tar.gz"
    sha256 "b4f50cc0ca742b123570e6168a2b3eadeae54c3a7bdec6162aeab57759e518fb"
  end

  def install
    bin.install "duccer"
  end

  test do
    system "#{bin}/duccer", "--version"
  end
end
