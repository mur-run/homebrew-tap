class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.68.3"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.68.3/mur-aarch64-apple-darwin.tar.gz"
      sha256 "6030eef46b4fcc1d24923bfadb1082e7e1aa0d1df6742622db641d4acb07601c"
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
