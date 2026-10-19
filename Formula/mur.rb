class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.95.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.95.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "18c6d1c405314b26283ab1447815cd2cf3d34b155d42e399755bef503d8985f2"
    end
  end

  def install
    # The preceding workflow step verifies this archive against the
    # canonical manifest before updating the formula.
    bin.install Dir["*"]
    bin.install_symlink "mur" => "murmur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
