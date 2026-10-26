class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.97.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.97.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "c6c238e52d9c9b3d2e50837834030f4b284388a127377f611d1ce898d86361ad"
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
