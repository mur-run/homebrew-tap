class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.8"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.8/mur-aarch64-apple-darwin.tar.gz"
      sha256 "c8ad6d90f286f90b8cae366a0a35022ce49682be0af1ba295271db6dfaa09636"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
