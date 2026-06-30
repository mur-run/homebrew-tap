class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.33.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.33.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "1e5ca0c8bd1bc7688050a28a55b11565debfa43847cea17dbe97e98ff2d1365c"
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
