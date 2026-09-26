class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.91.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.91.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "e9199fd8e299b447a0c6bb5bf9e12880ee90b9d1e0f710ed359d6b5a7221d961"
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
