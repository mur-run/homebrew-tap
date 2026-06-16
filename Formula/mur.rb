class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.25.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.25.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "f70489458abaf7a8130e16b94c69a0d25f4b76bd826b9fc5f995b0ea0465d046"
    end
  end

  def install
    bin.install "mur"
    bin.install "mur-mcp-server"
    bin.install_symlink "mur" => "murmur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
