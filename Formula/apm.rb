class Apm < Formula
  desc "Agent Package Manager — a package manager for agent skills"
  homepage "https://apm.orthg.nl"
  license "MIT"
  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.0.0/apm-v0.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "placeholder"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.0.0/apm-v0.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "placeholder"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.0.0/apm-v0.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "placeholder"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.0.0/apm-v0.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "placeholder"
    end
  end

  def install
    bin.install "apm"
  end

  test do
    assert_match "apm", shell_output("#{bin}/apm --version")
  end
end
