class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.71.8"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.71.8/mur-aarch64-apple-darwin.tar.gz"
      sha256 "704258ee1686340d39e5ec6482a434652a1b657cd4eefc97d9c141f261c0e52c"
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
