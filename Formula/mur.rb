class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.26.9"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.26.9/mur-aarch64-apple-darwin.tar.gz"
      sha256 "1f096fbf0df5bf2e7a79c8613aee8cc5ca19ecf5b779f243a37b294afa333c16"
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
