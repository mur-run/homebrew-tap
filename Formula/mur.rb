class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.2.2"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.2.2/mur-aarch64-apple-darwin.tar.gz"
      sha256 "3496980dd9d643112d5aab167283fa811eeb35e7b65d3c33bbd35c0741033f39"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
