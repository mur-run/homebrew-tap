class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.3.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.3.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "cce0a8a08943a8d8c8632362cd129f8b9d1bcadee9da429c5cef061a731b7f3e"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
