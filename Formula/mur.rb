class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.1.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.1.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "d6557feeae248b9ef0fea3b99b1beb1f6659050b35551a78d1f21473109a6add"
    end
  end

  def install
    bin.install "mur"
  end

  def post_install
    ohai "mur v2.1.0 installed! Run 'mur init --hooks' to get started."
    ohai "New: Pipeline workflow execution (mur run w1 | w2 && w3)"
    ohai "Dashboard embedded — run 'mur serve' to open."
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
