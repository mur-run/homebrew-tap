class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.9.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.9.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "e1ad8fa4e6f98e12466e626beed6eb8aae5cf295a25b363db3cdf8b31d4d38ac"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
