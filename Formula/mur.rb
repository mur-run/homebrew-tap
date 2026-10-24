class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.96.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.96.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "f2244af7fb1746bc1f33f506c9848ccd144c5b306a419a33b98eb0fd79dc3f8c"
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
