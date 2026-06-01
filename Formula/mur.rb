class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.2"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.2/mur-aarch64-apple-darwin.tar.gz"
      sha256 "6125f2cc154b1d5f2a6e2ffae5e17ba9b061e3a71417ab1ae05e89c6d48b0ca2"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
