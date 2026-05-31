class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "d5d5dcec885969439328ea37716eefc1a212df8ddfc9047686ee1bd45c31e49d"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
