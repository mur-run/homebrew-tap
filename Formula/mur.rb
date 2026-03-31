class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.2.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.2.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "d9b0ec1737683a62a44bd2015a2c7c14ea6d813e5e507726078d7a43a5465160"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
