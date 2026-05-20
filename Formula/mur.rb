class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.16.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.16.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "2cfe8e3a23337fc02971ada440be60f83635a1b6386f51ba1d1c8ad85a6a6fbe"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
