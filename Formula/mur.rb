class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.20.6"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.20.6/mur-aarch64-apple-darwin.tar.gz"
      sha256 "4932178aebf5f86723e3b4c3f341b469eed381e7578ccc74f3ce524dd0af5281"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
