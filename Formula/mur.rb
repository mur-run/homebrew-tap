class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.63.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.63.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "bf0b653877b2d629b1d57e71bde87afe6e325e30325e8406eb1257e7cbeed095"
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
