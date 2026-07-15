class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.50.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.50.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "0da1f6bf674fe766d2ad439da3cc62d4a13b91dbf6e56ed0fe9e41db4c29c492"
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
