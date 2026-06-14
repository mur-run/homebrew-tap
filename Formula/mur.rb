class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.24.3"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.24.3/mur-aarch64-apple-darwin.tar.gz"
      sha256 "cafd437c0fa20b109acbb66b06b251f16de41f4d2b7369494b5c8d8f9948f401"
    end
  end

  def install
    bin.install "mur"
    bin.install "mur-mcp-server"
    bin.install_symlink "mur" => "murmur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
