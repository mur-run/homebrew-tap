class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.11"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.11/mur-aarch64-apple-darwin.tar.gz"
      sha256 "52ffcbccbd8c7aaa044dd52bea71d44aa50c1409dc546b78697ae3f59df954bd"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
