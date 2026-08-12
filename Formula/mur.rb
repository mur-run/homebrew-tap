class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.68.7"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.68.7/mur-aarch64-apple-darwin.tar.gz"
      sha256 "81684c0e321cf6c98c79cf6e060c9d45f0194a74f03ddbdf3dad0ac6dc1c0836"
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
