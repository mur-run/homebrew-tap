class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.26.8"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.26.8/mur-aarch64-apple-darwin.tar.gz"
      sha256 "37fb9473fef651e9f20477a2656e5ba9f49552f040fe44b5bbd38e95e530bfe7"
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
