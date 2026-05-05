class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.6.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.6.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "50ecad30aa566fb8c623828a952c3d24dca9d1c7637f43413851b158291f5fe5"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
