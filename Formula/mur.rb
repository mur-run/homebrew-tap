class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.49.3"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.49.3/mur-aarch64-apple-darwin.tar.gz"
      sha256 "b7034bfd41ee27f73cbdd512eb8d860aa41f46df1a5eb4dc89d0c3ec80cd45c2"
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
