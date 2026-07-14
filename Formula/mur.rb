class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.49.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.49.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "4151fd7d1cb406b21b6f4328f908823a2e0ca199f0d9b12f3d10fea41c6e6513"
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
