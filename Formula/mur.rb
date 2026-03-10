class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.1.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.1.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "5098818c095d3599967b3f88134fa55fbb6b50d612406d36347cfed5edda710d"
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
