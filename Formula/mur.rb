class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.26.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.26.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "9e2c03e39f996a08dd08731fae15b915d61384dc906b24e3d2c02b862a9f30c1"
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
