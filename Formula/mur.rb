class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.28.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.28.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "0c9ac3927b0f5de95f85e9142130e3fd242cfe0cd4665b68928207b70246c821"
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
