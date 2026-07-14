class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.48.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.48.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "9bb81d472c55f46a4edf9e76afb8a5ca901c256ce1b09fb1b0ed5833f363a7d9"
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
