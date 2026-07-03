class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.37.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.37.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "072a6d1970dd8c33f98b99001f7316cadfcf1b14b66804264cc47ebaf2efd185"
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
