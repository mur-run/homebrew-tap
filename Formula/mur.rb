class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.18.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.18.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "9a880ed28ffd3f262d9d41aa34b8ef3d293a855bdfae9b780688f0ef89296204"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
