class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.7"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.7/mur-aarch64-apple-darwin.tar.gz"
      sha256 "24175e55122b07f6449430ee26816161cddcd4d45aee994285565fc676463a07"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
