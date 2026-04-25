class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.4.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.4.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "32c8a3c1530a0a2512a614b73bcd704c5d77c5533cd8ab4630341afdadf5ae29"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
