class Ns < Formula
  desc "NovaScript CLI"
  homepage "https://github.com/WildByteCrafter/ns"
  version "v0.3.0"

  on_macos do
    url "https://github.com/WildByteCrafter/ns/releases/download/v0.3.0/ns-v0.3.0-apple-darwin-universal.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/WildByteCrafter/ns/releases/download/v0.3.0/ns-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/WildByteCrafter/ns/releases/download/v0.3.0/ns-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "ns"
  end

  test do
    system "#{bin}/ns", "--version"
  end
end
