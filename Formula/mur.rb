class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.20.2"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.20.2/mur-aarch64-apple-darwin.tar.gz"
      sha256 "a105b906809ee46999faaad6ca065cc809b0fbfd7d05741c37c3f4427ae1f7c1"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
