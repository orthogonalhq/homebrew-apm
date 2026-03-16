class Apm < Formula
  desc "Agent Package Manager — a package manager for agent skills"
  homepage "https://apm.orthg.nl"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.1.0/apm-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0633bfb653bcaf9b97b316dce4e4f537c8f3c0361a99b1ea09deea7e4a8669d1"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.1.0/apm-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "995c6ba1fcd736bc577cae42202079b3efce33b1a947487506683ca6dfa97ad1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.1.0/apm-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af93dc855f49a484c16bc2aa7f8403e1c057e51498f12c093905bd3613b5a56f"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.1.0/apm-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c5880afb9b67e5f07bfdd875034c3b9a352761920622ac6837a17e19ba52dabd"
    end
  end

  def install
    bin.install "apm"
  end

  test do
    assert_match "apm", shell_output("#{bin}/apm --version")
  end
end
