class Timegrep < Formula
  desc "A CLI tool for grepping time"
  homepage "https://github.com/WildByteCrafter/timegrep"
  version "v1.0.0"

  on_macos do
    url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v1.0.0/timegrep-v1.0.0-apple-darwin-universal.tar.gz"
    sha256 "250ac77c8213461a3015d34060790934b2337f9b56de90f43f819bf46a312175"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v1.0.0/timegrep-v1.0.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0d894449e59028b29bc35b2c3dab57c7e88b4366a189b1732ef631860668ef05"
    else
      url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v1.0.0/timegrep-v1.0.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f0e3f0ec8d00e19310dfab739077d5a1f5b86b1ea6c363fe2c002c2e0d76a8dd"
    end
  end

  def install
    bin.install "timegrep"
  end

  test do
    system "#{bin}/timegrep", "--version"
  end
end
