class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.91.3"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.91.3/mur-aarch64-apple-darwin.tar.gz"
      sha256 "9e5e476ab24a72b24d942a05c8ddff4c1f3c81e8f7246e3c931a1d0afa76b22f"
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
