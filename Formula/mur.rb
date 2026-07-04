class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.39.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.39.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "f6b1477eba50cfacf6f919553fc1f845283c936144bf49cc217e713b6cd5a413"
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
