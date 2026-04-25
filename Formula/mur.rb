class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.4.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.4.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "03cc09c9d74754dd106b7f6957117dcb8cad466295506ac05d26570bd0b6f4af"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
