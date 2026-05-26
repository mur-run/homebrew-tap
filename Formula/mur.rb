class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.20.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.20.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "b64f78fac829af686df7063033400ae392398e66f9f55217009071ca6777c7fb"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
