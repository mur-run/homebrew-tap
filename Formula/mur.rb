class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.16.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.16.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "7ea83f44c670691d6535a657cec51746f10968182630f8d51fea604f002a0efc"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
