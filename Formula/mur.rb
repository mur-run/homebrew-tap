class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.43.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.43.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "f4e62ce5020b459ebfda52bf20e5a6acbbe20e1b9833b302fabe4b2ed06351ef"
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
