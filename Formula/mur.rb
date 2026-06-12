class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.24.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.24.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "bd060f3c2bb479002e8e6b1f57014dd33e5cb152940f09dc36857b0699423e27"
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
