class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.18"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.18/mur-aarch64-apple-darwin.tar.gz"
      sha256 "bfe80d2b70d22d59935ba5d0055fdd88bd88215cd40f572e619707ee732ad02f"
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
