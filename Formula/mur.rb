class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.13"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.13/mur-aarch64-apple-darwin.tar.gz"
      sha256 "a69375164c3ae2a81c41b0a2c2832140633ab217e64965ea8522d9b2d2dd4a9c"
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
