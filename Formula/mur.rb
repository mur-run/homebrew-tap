class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.45.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.45.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "79f47bf7ef3c18f3a326174096c94743fcfc7f3a32830ce89899184db7081752"
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
