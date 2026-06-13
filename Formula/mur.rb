class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.24.2"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.24.2/mur-aarch64-apple-darwin.tar.gz"
      sha256 "5ecb839bbef22cea4294097821a749d83e03fd761057983db7c7a0c2763fe652"
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
