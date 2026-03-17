class Apm < Formula
  desc "Agent Package Manager — a package manager for agent skills"
  homepage "https://apm.orthg.nl"
  license "MIT"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.3.1/apm-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "7d4b605e59e5fcfd07b8b3fff674ca1c17d8af7d5c1c5a6b1a692bc39a921d32"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.3.1/apm-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "48619aefe8a940b18cfc772d4256b4d2c76221313468bbf860f7a7c8455c7728"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.3.1/apm-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "605e88744613afc1d6c0d73c21514db5218ab202a11d3f9a2eeebf28285004d8"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.3.1/apm-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3bbd64b697e3387f246593e18d69ac8169e4d8d3182354ff4ad4bfb6444fc29"
    end
  end

  def install
    bin.install "apm"
  end

  test do
    assert_match "apm", shell_output("#{bin}/apm --version")
  end
end
