class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.0.0-alpha.20"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.0.0-alpha.20/mur-darwin-arm64.tar.gz"
      sha256 "2390099cc33f00a2b58fd55b07565a06f6af7c11e950b89c5d6b1470a959100d"
    end
  end

  def install
    bin.install "mur"
  end

  def post_install
    ohai "mur v2 installed! Run 'mur init --hooks' to get started."
    ohai "Dashboard embedded — run 'mur serve' to open."
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
