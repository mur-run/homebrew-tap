class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.17.2"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.17.2/mur-aarch64-apple-darwin.tar.gz"
      sha256 "c05cac7a50c9ed63da43a684f31a0b23d250600c020b4c3ab32b91304626becd"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
