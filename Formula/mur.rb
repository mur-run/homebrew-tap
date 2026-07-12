class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.46.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.46.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "27be5ec82bb8f675d6aee1367bc40bd54e2f4721de9a6ffc0a401aa1fee720a9"
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
