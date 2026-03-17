class Apm < Formula
  desc "Agent Package Manager — a package manager for agent skills"
  homepage "https://apm.orthg.nl"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.4.0/apm-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "7ae6700b13469628c36e517c777ce960311341a186d9e071a2037d6bc466924a"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.4.0/apm-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "65c0f1d7d1badb3f6225cd8d52e452ce38e7b01952a7c21f073ad34ca1065c86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.4.0/apm-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ed4ba567a0f8164792cb035e1c7391d85bfc58fa6ada7ad394acabd35e39d56"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.4.0/apm-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d9d2f14742ec6a6fce8ac5811b8175449edfded3c8e8fbd97a52a447e9c7a45"
    end
  end

  def install
    bin.install "apm"
  end

  test do
    assert_match "apm", shell_output("#{bin}/apm --version")
  end
end
