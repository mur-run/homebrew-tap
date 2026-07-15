class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.49.2"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.49.2/mur-aarch64-apple-darwin.tar.gz"
      sha256 "e5649a2ad3198dcad9e04cfeabc4eeae02ff69ddf7542cfd0f35fdca2757f0da"
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
