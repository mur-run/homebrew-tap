class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.71.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.71.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "62d07dd8f862865a930d9eabd171d173379731a3f15b1fbccd75cd01087e4c86"
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
