class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.101.2"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.101.2/mur-aarch64-apple-darwin.tar.gz"
      sha256 "30fb604ff3fbdfcd7a457551755f12dbf88600c34f9310a85d6e624179426cf2"
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
