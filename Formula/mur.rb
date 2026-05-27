class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.20.5"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.20.5/mur-aarch64-apple-darwin.tar.gz"
      sha256 "d762e85a8fcc1b415fd6db6d24bdb61e453d9cb43cc73346671336bd1315f879"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
