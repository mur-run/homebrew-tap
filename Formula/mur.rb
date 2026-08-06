class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.67.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.67.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "cc30ad56e9735586f5fa08bcd325104ea4dfe8eebc2c7c11c2a4ab404625d72e"
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
