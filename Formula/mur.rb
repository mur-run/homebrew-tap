class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.71.24"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.71.24/mur-aarch64-apple-darwin.tar.gz"
      sha256 "18460efdf0ffed12e1919b5f5d176c0af80714e7d2360f7226ca71f0b0e85dae"
    end
  end

  def install
    # Whatever the tarball ships — the `build` job's $BINARIES and
    # nothing else is in it. Naming them here made the formula a
    # second copy of that list, and it drifted: mur-research-gateway
    # was added to the tarball while brew kept discarding it.
    bin.install Dir["*"]
    bin.install_symlink "mur" => "murmur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
