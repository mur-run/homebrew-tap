class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.19.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.19.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "3207f3c2ea51148f894572bc6b7734f3c8fb54a5d24c24b0c41f5b922a4b2306"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
