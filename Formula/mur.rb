class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.26.5"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.26.5/mur-aarch64-apple-darwin.tar.gz"
      sha256 "c35b8b94a362c0c98b9fc500cc6f872de56374b2efc9a8295c148ca45a77f9cb"
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
