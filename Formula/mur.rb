class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.3"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.3/mur-aarch64-apple-darwin.tar.gz"
      sha256 "ba47428990d92ee67b688a42ccdd7147fbec0cc1ec99d1df71ad665afb6ad8bc"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
