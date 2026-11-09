class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.101.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.101.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "f03f30bda0b412c75b54cde7f774e829c43734295efa414b20b380713b651f80"
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
