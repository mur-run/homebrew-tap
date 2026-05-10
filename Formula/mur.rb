class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.15.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.15.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "49f122fe4efeb80db58ad426186ac57253127bdbbacabf0238415cb2b1183d88"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
