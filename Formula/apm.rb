class Apm < Formula
  desc "Agent Package Manager — a package manager for agent skills"
  homepage "https://apm.orthg.nl"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.2.0/apm-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "8560ab4c8ef39398aca67e048b4c6a9a8741bfaa2855a8aec03c72aa0de49d28"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.2.0/apm-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "a81f6590915db8783707b9fd84d63a1f9ab55400a1fdf00761c9e963e6d62f21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.2.0/apm-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a77a14870b90334d5d5d8bbb9039a682a82e63ee04fd1bb2eff297337ca2ba41"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.2.0/apm-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ad969c7df3afa1e809cfdd3f573d5f505433911c609511a17b7591538a6239e"
    end
  end

  def install
    bin.install "apm"
  end

  test do
    assert_match "apm", shell_output("#{bin}/apm --version")
  end
end
