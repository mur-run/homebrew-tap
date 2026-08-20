class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.70.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.70.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "09df68b6b4970763864e6b5f3245254d992dd065003d02621cfc606098cdd72c"
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
