class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.85.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.85.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "a2c8ac0247967f29887149d7431a54cc2b3969203c8dab1239aacd65793c950d"
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
