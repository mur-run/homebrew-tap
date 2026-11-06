class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.99.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.99.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "bc1426e067932394dfe93e4b8d33cd8450c2dab8f6c8af0a235c726797642979"
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
