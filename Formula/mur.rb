class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.91.8"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.91.8/mur-aarch64-apple-darwin.tar.gz"
      sha256 "c33c75976dfd3285d3b24778b9603121db2920c092b98032a60d686698fb9142"
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
