class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.6"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.6/mur-aarch64-apple-darwin.tar.gz"
      sha256 "74cc88987377472f0d1582bc2cdd15969e15277c203e1db452abedfff7248c67"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
