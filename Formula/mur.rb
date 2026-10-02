class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.91.9"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.91.9/mur-aarch64-apple-darwin.tar.gz"
      sha256 "384303b14053ce9343aa59e4b415817bf7bca61e663bdfea791f8962ee59f4d0"
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
