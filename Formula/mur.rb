class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.68.2"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.68.2/mur-aarch64-apple-darwin.tar.gz"
      sha256 "df1570333a6df897ce074112c2185f0bc2d1d5e588ffc975fc0b09e2191b28f9"
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
