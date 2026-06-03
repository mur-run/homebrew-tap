class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.10"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.10/mur-aarch64-apple-darwin.tar.gz"
      sha256 "34899faa1c4247fb7b6a748588dc0742ae3def20a786aae924c48117957cb97f"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
