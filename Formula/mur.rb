class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.19"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.19/mur-aarch64-apple-darwin.tar.gz"
      sha256 "204b3822df7825c7e63b9c98278da89becaf87e0fc8763a39edf3fdb66ed9403"
    end
  end

  def install
    bin.install "mur"
    bin.install "mur-mcp-server"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
