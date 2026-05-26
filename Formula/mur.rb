class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.20.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.20.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "c26830f81389d3322aa7539e2ab9e06b0fae86fba63bacae8fb72ef7c5c6c014"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
