class Ns < Formula
  desc "NovaScript CLI"
  homepage "https://github.com/WildByteCrafter/ns"
  version "v0.5.4"

  on_macos do
    url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v0.5.4/ns-v0.5.4-apple-darwin-universal.tar.gz"
    sha256 "69636630f11d5f193eab6bf146c6e4541f157f0d362d9e6eca14b710a43b0463"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v0.5.4/ns-v0.5.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ac031ad20b270e4914783278616a8c68e3714a82d3cdba768e0f0ca26f749fdb"
    else
      url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v0.5.4/ns-v0.5.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "499b7600da12e45bdf3aec636e8dbfa8c14bcd2f41379e505d753b602cadc4c3"
    end
  end

  def install
    bin.install "ns"
  end

  test do
    system "#{bin}/ns", "--version"
  end
end
