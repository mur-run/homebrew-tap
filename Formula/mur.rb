class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.90.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.90.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "1ffc10052de4a55845a230de214ed0c32002e45c5f9dc392de576c1b938593dc"
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
