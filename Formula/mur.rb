class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.30.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.30.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "4f6efa44e88008b274c2f5404c0f9ca2797da3207ecd9e2f6c5734766c4f2231"
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
