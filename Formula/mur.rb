class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.24.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.24.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "702a2887ccea31bd7d6e1c3f486995b2025564c913f829879ce3a7d00514cad9"
    end
  end

  def install
    bin.install "mur"
    bin.install "mur-mcp-server"
    bin.install_symlink "mur" => "murmur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
