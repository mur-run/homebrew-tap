class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.0.0-alpha.26"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.0.0-alpha.26/mur-darwin-arm64.tar.gz"
      sha256 "fc56b3ac5af1fb43c97ace356c68a5cc65419246c1199f817f7fb88e1ba36a18"
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
