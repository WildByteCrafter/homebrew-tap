class Ns < Formula
  desc "NovaScript CLI"
  homepage "https://github.com/WildByteCrafter/ns"
  version "v0.4.1"

  on_macos do
    url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v0.4.1/ns-v0.4.1-apple-darwin-universal.tar.gz"
    sha256 "57aa89afdeb72c946df1810741a4c76e95d765b525bced858fbb4f6c0d988cfc"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v0.4.1/ns-v0.4.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c31627dbf051580792da8837ad37df18b3251a78955c3c38ebb3582c8cf73e28"
    else
      url "https://github.com/WildByteCrafter/homebrew-tap/releases/download/v0.4.1/ns-v0.4.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6bb51e5f2021dd44e1a9be4c032524b2a84a7db867ae94550e51e645a21e4342"
    end
  end

  def install
    bin.install "ns"
  end

  test do
    system "#{bin}/ns", "--version"
  end
end
