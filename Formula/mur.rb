class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.51.3"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.51.3/mur-aarch64-apple-darwin.tar.gz"
      sha256 "1d250202dfc888dd784d620d49327977ceb4e501e869e77d8f907b840ec04bb4"
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
