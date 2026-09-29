class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.91.6"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.91.6/mur-aarch64-apple-darwin.tar.gz"
      sha256 "8bbf26e348bb0c6e2f8df71df1a0be2792b66bc87e0cd2551bd8f0a1892f2f1d"
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
