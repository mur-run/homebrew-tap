class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.41.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.41.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "2540320c7de1b3bbd73ecb1508b4ae874c1a982c192bad687f15effc14a2d4c7"
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
