class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.68.8"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.68.8/mur-aarch64-apple-darwin.tar.gz"
      sha256 "18b872008826741e415a0231abac2c803cdae066c8f69c42cb4e13cac4634d6a"
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
