class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.17"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.17/mur-aarch64-apple-darwin.tar.gz"
      sha256 "eaa1453c46ef9eb63e613ab7e697816b35271c5c6acf2232ef9afbc8371782f6"
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
