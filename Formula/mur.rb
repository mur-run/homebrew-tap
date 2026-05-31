class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "cfe9c8eb2afb416fe7754085f1025a7ad4f400a0ec02697d8e9a57c60da0086b"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
