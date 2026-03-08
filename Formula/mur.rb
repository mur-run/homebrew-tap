class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.0.0-alpha.25"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.0.0-alpha.25/mur-darwin-arm64.tar.gz"
      sha256 "4a870b5f067cc899b6d5019411d0408d4370a394d98835ae7c2664e6165d0055"
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
