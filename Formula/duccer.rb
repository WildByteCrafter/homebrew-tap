class WmTui < Formula
  desc "WireMock TUI"
  homepage "https://github.com/WildByteCrafter/duccer"
  version "v1.0.3"

  on_macos do
    url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v1.0.3/duccer-v1.0.3-apple-darwin-universal.tar.gz"
    sha256 "c925cff53ea30ccd3c9a7c0a8e21d3da1c43c1c45e89701010888407bbc5970d"
  end

  def install
    bin.install "duccer"
  end

  test do
    system "#{bin}/duccer", "--version"
  end
end
