class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.60.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.60.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "e882a300d0dba5f53457662c235dff4e594813e5de3646a0a4b7760498264178"
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
