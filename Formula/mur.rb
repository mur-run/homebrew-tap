class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.91.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.91.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "3414e6a7aea1d9240a89f9e195feec307ca8a7ea7a78a40617b1a178d9495559"
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
