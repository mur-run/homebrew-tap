class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.31.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.31.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "74fd780bda2c4fb6c29c00f31fbbd6f674821e96c7aba897f0a8017bf30bf34d"
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
