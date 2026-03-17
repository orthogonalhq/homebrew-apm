class Apm < Formula
  desc "Agent Package Manager — a package manager for agent skills"
  homepage "https://apm.orthg.nl"
  license "MIT"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.4.1/apm-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "4c901a936bb87ac340856933cf20e3edbc352943d10cc15876402b04f755cf05"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.4.1/apm-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "3d76c63dde9f282335b5323e012da25df3e60ca79da0bf25b7eecbe23bd3a23a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.4.1/apm-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9525727a040b5f550a022ed0f967287a6957fa7dde2aa501ebddbb3a859b6328"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.4.1/apm-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8729ed85fe7817c706121caa0fbb234136e62e766510067e7c4ada5e0e51117"
    end
  end

  def install
    bin.install "apm"
  end

  test do
    assert_match "apm", shell_output("#{bin}/apm --version")
  end
end
