class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.3"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.3/mur-aarch64-apple-darwin.tar.gz"
      sha256 "a46f672642ebcf96fe60f5c0839abea04b8ea4a6b7e5a712558bc47e4ca84524"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
