class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.12"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.12/mur-aarch64-apple-darwin.tar.gz"
      sha256 "4e5ace8388ec6758a22b5331ac14dbd3b029612fedf6238f48bbb9aa3399ecb3"
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
