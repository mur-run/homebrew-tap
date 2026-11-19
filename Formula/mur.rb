class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.102.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.102.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "78020782cb287f80ea67c05f6c869a4f2ce7c5b85aac9dc14874a3ec04c23fb8"
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
