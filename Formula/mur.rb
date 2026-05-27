class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.20.4"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.20.4/mur-aarch64-apple-darwin.tar.gz"
      sha256 "c04dab483bb9b5fc54725f5f5ec8ae9af857d2f65ef41e20583fb82e5cc5a656"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
