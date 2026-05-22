class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.17.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.17.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "91f579da9c204df8d89bf510afd6b8a90e44942cfcec13d921e5e0225749d7d1"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
