class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.7.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.7.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "45985c4bb7d2efa21d7e1bc7e770459ed636eaeb9b07f153806ffab2889936c3"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
