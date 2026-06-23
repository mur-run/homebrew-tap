class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.26.7"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.26.7/mur-aarch64-apple-darwin.tar.gz"
      sha256 "40098d89da472e8952b73e8a3f8d5d16dd4b2d0cc1b9637e6028b3ef6e7c874e"
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
