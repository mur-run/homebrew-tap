class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.20"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.20/mur-aarch64-apple-darwin.tar.gz"
      sha256 "239e794bf6adf44ec63b963e172ded98e86327b7a3034cc659ffc9bf6802d1ad"
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
