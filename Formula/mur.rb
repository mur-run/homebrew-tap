class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.92.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.92.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "dee2954b8f3c4f6a869d0e30908691d5e0a07af76ac65f93536bb1f012eda48d"
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
