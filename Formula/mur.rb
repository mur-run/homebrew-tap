class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.6.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/archive/refs/tags/v2.6.0.tar.gz"
      sha256 "db627ac35fa83ecb9265b7c114efcaaf565e2e7d70e4f6bc9f0ced9a020fba0c"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
