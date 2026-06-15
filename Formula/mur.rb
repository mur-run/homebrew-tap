class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.24.5"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.24.5/mur-aarch64-apple-darwin.tar.gz"
      sha256 "7b122c8f9ce7e3ffc7a262af9657fa630cde6ef07bf66734b26652f6dff6148d"
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
