class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.34.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.34.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "b7c39ba303dbe339dc8c87661c9577d8190efb85d0cbaef564288f250aa6e431"
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
