class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.66.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.66.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "338f6ba865555d9495af88fbe09f1a695e8087c64a22d9e07dbbe5d8da0751d2"
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
