class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.61.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.61.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "bdd82da699dd1ed3287454631432fd88c4357b30ef06fdb6511be76580fc02f2"
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
