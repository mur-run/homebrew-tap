class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.2.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.2.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "731e2dc87d3728211fb9e00da9dfafd4c1d36c73cf1a5360597377b3578cad24"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
