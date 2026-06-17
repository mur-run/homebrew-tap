class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.26.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.26.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "55294e8a1ef539d97f04b90f99ffccb6f88dff3455cf292cdff05a5c1b2e0894"
    end
  end

  def install
    bin.install "mur"
    bin.install "mur-mcp-server"
    bin.install "murmurd"
    bin.install_symlink "mur" => "murmur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
