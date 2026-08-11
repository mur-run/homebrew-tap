class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.68.6"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.68.6/mur-aarch64-apple-darwin.tar.gz"
      sha256 "3c794d66d13757468946b75b8fe57615eaaa1868015b65fa256ab21b0c0a22c6"
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
