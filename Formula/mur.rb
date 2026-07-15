class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.51.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.51.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "af90b907c2a5ef71f1cadd8674b057dcfc822a889a807d5b81201dc88f78f55b"
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
