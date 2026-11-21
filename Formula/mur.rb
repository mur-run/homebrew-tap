class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.103.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.103.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "4cf72e7d3714700f031df2434c32d3a96b10624a501135f935f5c2434f2dadad"
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
