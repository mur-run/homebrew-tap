class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.52.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.52.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "52be5e2589e371e47cd3ede70327a484f5b11f4eeb56f638392f52dafe291984"
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
