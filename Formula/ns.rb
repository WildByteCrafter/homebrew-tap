class Ns < Formula
  desc "NovaScript CLI"
  homepage "https://github.com/WildByteCrafter/ns"
  version "v0.6.0"

  on_macos do
    url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v0.6.0/ns-v0.6.0-apple-darwin-universal.tar.gz"
    sha256 "e9942bf93a791fde2c5cf576b30f9676010c44a905af3feb31cba48756f19abc"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v0.6.0/ns-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a3d8bc0f4957a8846b4c898962452992430a6917ffa977e93851879e48229e41"
    else
      url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v0.6.0/ns-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d945a3e39ddabb11ba2a9c4e03aa84082600b765ecd4ca9e32a886255df65006"
    end
  end

  def install
    bin.install "ns"
  end

  test do
    system "#{bin}/ns", "--version"
  end
end
