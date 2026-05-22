class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.17.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.17.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "06a72eedb8a7dde0d6c9f3c1f7f2cab64b6b33db080a9c486c510ab4b4bbad3c"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
