class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.18.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.18.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "33f870741e0b68cce11d373158edfa0f3760977837d6b00dd743938fa6cd9d92"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
