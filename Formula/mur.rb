class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "79dd5a894853180a2fe776e8ec723baa8048ecac520a376106f2e46d6747a5e9"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
