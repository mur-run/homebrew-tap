class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.1.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.1.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "a2ac3220a571a76419cf9bad66d9c23a86f73dc978c92743ea8aa1dc3ce53ac1"
    end
  end

  def install
    bin.install "mur"
  end

  def post_install
    ohai "mur v2.1.1 installed! Run 'mur init --hooks' to get started."
    ohai "New: Pipeline workflow execution (mur run w1 | w2 && w3)"
    ohai "Dashboard embedded — run 'mur serve' to open."
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
