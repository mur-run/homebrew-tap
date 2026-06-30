class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.35.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.35.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "3c31ba7eb84fb7a449eb4857bdeb8dcb42d173ce3cc9290e7cd1f50b8e4f8d85"
    end
  end

  def install
    bin.install "mur"
    bin.install "mur-mcp-server"
    bin.install "murmurd"
    bin.install "mur-agent-runtime"
    bin.install_symlink "mur" => "murmur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
