class Apm < Formula
  desc "Agent Package Manager — a package manager for agent skills"
  homepage "https://apm.orthg.nl"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.3.0/apm-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "c41001096cf0626f22b6db7b8c9d9957afd2f23fdbea667694a48512d8631d4e"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.3.0/apm-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "b8b7ab03f35f42a35fd50ee18fe15cf3efc8598b62511a46d8298048c3af1ae4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orthogonalhq/apm/releases/download/v0.3.0/apm-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4a7831708b441a316d9b49160cc53d6a031f3c02a318f2631742b7c0a08b7a27"
    else
      url "https://github.com/orthogonalhq/apm/releases/download/v0.3.0/apm-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "518a23f517786622a7c7f76016c2f62f7bfe63e2fc20b3d7273f935f33cc7e2a"
    end
  end

  def install
    bin.install "apm"
  end

  test do
    assert_match "apm", shell_output("#{bin}/apm --version")
  end
end
