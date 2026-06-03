class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.7"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.7/mur-aarch64-apple-darwin.tar.gz"
      sha256 "4c8914c753d42547abfa63ae73eca0af6a84978c2cd2b9b116b0e818b37e5463"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
