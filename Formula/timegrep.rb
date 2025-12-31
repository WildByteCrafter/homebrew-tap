class Timegrep < Formula
  desc "A CLI tool for grepping time"
  homepage "https://github.com/WildByteCrafter/timegrep"
  version "v1.1.0"

  on_macos do
    url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v1.1.0/timegrep-v1.1.0-apple-darwin-universal.tar.gz"
    sha256 "b3376ee94ad64ebee62f2a254cdb2d9c05312ed33792c316e3eac7786caef14e"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v1.1.0/timegrep-v1.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "96eef8602b0d6f98bd64430930751b7ed3e35ed5aa54595ba612e55a4c47a529"
    else
      url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v1.1.0/timegrep-v1.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f0471347db9c2582ed5f492aceed5c8a19393500d73dcfadceb1ef64c504e1d"
    end
  end

  def install
    bin.install "timegrep"
  end

  test do
    system "#{bin}/timegrep", "--version"
  end
end
