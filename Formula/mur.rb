class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.38.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.38.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "4e9dca0f31a8b2b82965ea368a442e96957579422ca24bd14fd7a1cd3d4929c4"
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
