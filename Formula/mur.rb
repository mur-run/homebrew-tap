class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.91.2"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.91.2/mur-aarch64-apple-darwin.tar.gz"
      sha256 "36003e16260f1ccd417fe53a9a9d2dea7c6f650b9073ca4d2f0b262dc7b6300d"
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
