class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.92.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.92.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "3cd510e9efce4112c2042ad17fea9f027449427dc872c76df6a6ff00e127ac74"
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
