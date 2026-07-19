class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.52.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.52.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "08d5100bfe0e032a2003b8f43f457c97e778bd774593239d76b0358ab27ad92b"
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
