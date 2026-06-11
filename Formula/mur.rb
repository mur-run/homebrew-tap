class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.23.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.23.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "e707a75d4d54f8283d56292fa9b2cf9fdd619fb5e502164772437597fde95fae"
    end
  end

  def install
    bin.install "mur"
    bin.install "mur-mcp-server"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
