class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.22.4"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.22.4/mur-aarch64-apple-darwin.tar.gz"
      sha256 "e341303742681dca6c2591539ebd47cf41e72ab85c860d6fd867caeb70c95dc0"
    end
  end

  def install
    bin.install "mur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
