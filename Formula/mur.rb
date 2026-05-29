class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.21.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.21.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "04fb0b146d96810ea6dacee67503a4b37053155f4aca81aa3ac29b0fceb99fd1"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
