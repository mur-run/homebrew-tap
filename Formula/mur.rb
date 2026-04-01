class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.2.4"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.2.4/mur-aarch64-apple-darwin.tar.gz"
      sha256 "7fbadcfff3df19645decad56a914a22279a01c96156a5101e1b7595deb017128"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
