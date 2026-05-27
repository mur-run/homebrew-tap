class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.20.3"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.20.3/mur-aarch64-apple-darwin.tar.gz"
      sha256 "da520cb327a809b389c0857f464a2be61ba25c785ff086cf83a59a53e2044e6c"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
