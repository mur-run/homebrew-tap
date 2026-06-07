class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.15"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.15/mur-aarch64-apple-darwin.tar.gz"
      sha256 "17cd354954471128fe4e68c948a8ec8931f52912ac3fbcf7ceb33d14a2e4a09e"
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
