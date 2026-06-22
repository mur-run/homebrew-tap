class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.26.4"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.26.4/mur-aarch64-apple-darwin.tar.gz"
      sha256 "a677402bd0c68d19717b342ba9da949168199cd5da55462474ca6134dcf0b192"
    end
  end

  def install
    bin.install "mur"
    bin.install "mur-mcp-server"
    bin.install "murmurd"
    bin.install_symlink "mur" => "murmur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
