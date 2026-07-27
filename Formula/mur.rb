class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.58.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.58.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "039a7609050f3c0a7de7f089fdc3a8c6e07c532b6bc4b7fdbe9889450ba7954e"
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
