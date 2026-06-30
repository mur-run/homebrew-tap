class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.32.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.32.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "6bd42cbe0270a9275e990fed8d3f9cfbdcc8b783a86141a725661c10c11ba1fc"
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
