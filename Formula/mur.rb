class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.17.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.17.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "c0ddc9ab5876c216efdb17bd75250d026c66b146d2631bda4723a96b06d7f15b"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
