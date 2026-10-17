class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.93.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.93.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "399e83d3e1411c18313f0c48b90149a248430584eec2d1dd6b0abc04d2a95cd2"
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
