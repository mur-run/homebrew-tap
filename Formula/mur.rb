class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.91.5"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.91.5/mur-aarch64-apple-darwin.tar.gz"
      sha256 "dce09fce67e941c099f017b4ae942d1b96538dbadf037c6bc6d023f35f0582ab"
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
