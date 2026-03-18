class Apm < Formula
  desc "Agent Package Manager — a package manager for agent skills"
  homepage "https://apm.orthg.nl"
  license "MIT"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.4.2/apm-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "47f6aa954f5d3fd372af0bd4cddfe43c0b43ce43726aa8b92e823ff2cc0f46e5"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.4.2/apm-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "7db3f6061854faa655ace0ccc899ea79573eb3e73c5de5a17700fcad1c9a314b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.4.2/apm-v0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e84a2e8fb2af087e55dcaac15d9efbdebcb30d74119bedfb8ff8137ee889b0d3"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.4.2/apm-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5c2d63487485dc3aa9f5b17a442550d0d26aeefec966db98d7641e826987e52"
    end
  end

  def install
    bin.install "apm"
  end

  test do
    assert_match "apm", shell_output("#{bin}/apm --version")
  end
end
