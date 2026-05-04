class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.5.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/archive/refs/tags/v2.5.0.tar.gz"
      sha256 "c0084867d47b1b542dfb5f725bca3037384949e7bb08cdd00c6eafb94c36d01c"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
