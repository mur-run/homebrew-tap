class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.26.3"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.26.3/mur-aarch64-apple-darwin.tar.gz"
      sha256 "4165d45f54ebe07d3dc609ef9a97a605b8cd0a3ffda2bf9594befff89ecfe53a"
    end
  end

  def install
    bin.install "mur"
    bin.install "mur-mcp-server"
    bin.install "murmurd"
    bin.install_symlink "mur" => "murmur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
