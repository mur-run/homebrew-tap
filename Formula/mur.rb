class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.28.2"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.28.2/mur-aarch64-apple-darwin.tar.gz"
      sha256 "c2c6018df24e8243ad0dcdca37adecc7d0f358e82968f875af5246bcb6ff27aa"
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
