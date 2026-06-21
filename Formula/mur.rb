class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.26.3"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.26.3/mur-aarch64-apple-darwin.tar.gz"
      sha256 "9d58f11a46434cb42abb5f3b9f36d6b26b4438bd3fca13acc07e916d15a2f454"
    end
  end

  def install
    bin.install "mur"
    bin.install "mur-mcp-server"
    bin.install "murmurd"
    bin.install_symlink "mur" => "murmur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
