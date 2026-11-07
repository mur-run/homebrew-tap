class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.100.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.100.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "dba4bed97649905ef0c3c6f48543b538e0729f01262394809862feae5c414e14"
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
