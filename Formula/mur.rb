class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.49.2"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.49.2/mur-aarch64-apple-darwin.tar.gz"
      sha256 "188fd967aba9b19e311eb904d849db54cab5105e37da1b1bef746700b1e942ed"
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
