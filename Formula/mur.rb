class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.7"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.7/mur-aarch64-apple-darwin.tar.gz"
      sha256 "97699fc80097d35e974e395c7e191dc261313ec73ea0a639a68270cc198a12e7"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
