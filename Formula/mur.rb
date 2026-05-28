class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.20.7"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.20.7/mur-aarch64-apple-darwin.tar.gz"
      sha256 "32b6bfd9e6c4b0f1a4b68f832a4791b16fa275d6d1fd17975cba640c7c82f4fe"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
