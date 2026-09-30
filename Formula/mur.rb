class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.91.7"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.91.7/mur-aarch64-apple-darwin.tar.gz"
      sha256 "1f7b2dabf722dad5b1950cd645249def2b8f5e0df743ff364d490f105a9fae44"
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
