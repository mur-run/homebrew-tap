class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.36.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.36.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "1ad45d68c66dcdb22349a526d5b08010b9eec8e3d5226a7327a8bdb5fa4200cb"
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
