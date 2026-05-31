class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "e91ef999083f4b0ebcfd2748fa89806ec458b7a80a043ee93e0a5f005cf01499"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
