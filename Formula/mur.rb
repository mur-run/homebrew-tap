class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.91.10"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.91.10/mur-aarch64-apple-darwin.tar.gz"
      sha256 "8c7c6753e2dbf0354d72e560d734e1282a477cb59970325a513774da759e3719"
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
