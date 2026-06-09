class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.16"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.16/mur-aarch64-apple-darwin.tar.gz"
      sha256 "fb39a012a4eeabddfdfc17cf0d95cd47dd3347a625a8d66812d18eba5cfcf5b6"
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
