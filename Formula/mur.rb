class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.43.2"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.43.2/mur-aarch64-apple-darwin.tar.gz"
      sha256 "6abb3ed434eaf94d22ed3ba3679b34c6b12680764f29e74dae6667b813cf16dd"
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
