class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.101.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.101.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "be9d2f89fabb0164e0d005258ac444457fa5348baf6977d812008721c7251c7f"
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
