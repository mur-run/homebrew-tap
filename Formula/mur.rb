class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.62.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.62.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "ce1b07f41b044b376e49bed4b9abe56aad01f9915a06b65f941f2a43a47a7d12"
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
