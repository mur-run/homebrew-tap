class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.56.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.56.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "113b0ecd2c24ecd0bb47c91465d066ea1d03145c80d717099d4cebd9782012a8"
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
