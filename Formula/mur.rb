class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.27.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.27.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "9e3277c2d4fa7366a02ec885d8639ca3f974dfa9581732cabf1fc4e89a5db445"
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
