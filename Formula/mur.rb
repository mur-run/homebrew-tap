class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.25.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.25.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "7c4fa140cb2c8616a3087963aaa98f9628b96bb2c43398250b438d5cb05b72ec"
    end
  end

  def install
    bin.install "mur"
    bin.install "mur-mcp-server"
    bin.install "murmurd"
    bin.install_symlink "mur" => "murmur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
