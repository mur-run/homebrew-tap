class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.20.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.20.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "682dd6a16c2f52e4b44ef35b822393044b86199dae540961c651bfa51967efc2"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
