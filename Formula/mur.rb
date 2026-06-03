class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.9"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.9/mur-aarch64-apple-darwin.tar.gz"
      sha256 "5df74327ece353b8988ec01c2ba464a14464f4f26b830a28e12a0b38c49532a0"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
