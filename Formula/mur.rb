class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.16.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.16.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "373453099acea63bae8362d4fb60ad8ba5600cfbeb6e247e59fd7811ed54e6e0"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
