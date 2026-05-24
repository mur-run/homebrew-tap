class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.19.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.19.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "d895d2373e99016f2453712128fe3edd6dddf55cf71858f46508381d4c42cb4a"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
