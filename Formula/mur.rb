class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.65.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.65.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "7ac00cef0bc174d2c3b3ef59f5bc40df579d46da3461a6e659b1d01671c35d03"
    end
  end

  def install
    bin.install "mur"
    bin.install "mur-mcp-server"
    bin.install "murmurd"
    bin.install "mur-agent-runtime"
    bin.install_symlink "mur" => "murmur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
