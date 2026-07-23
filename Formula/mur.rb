class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.55.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.55.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "c1675998462a11b9d9506885c18425abc449347c7690c8dabd6c6170a91329a8"
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
