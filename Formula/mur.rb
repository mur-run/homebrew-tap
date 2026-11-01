class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.98.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.98.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "0e1a3b7f6b130ce9c853347560af52aa128c934016f697362609c084675e467b"
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
