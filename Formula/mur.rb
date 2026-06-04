class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.14"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.14/mur-aarch64-apple-darwin.tar.gz"
      sha256 "663acef809c2e81f9922a70b632fbda807a222c3fe1f1e0d4d022d240d88ed69"
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
