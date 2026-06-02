class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.5"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.5/mur-aarch64-apple-darwin.tar.gz"
      sha256 "c425a9a44a1ddc365f62a9456625620a08e6ca569e0763c1a33ee7ed46c37796"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
