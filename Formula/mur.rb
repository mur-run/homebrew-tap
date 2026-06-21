class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.26.3"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.26.3/mur-aarch64-apple-darwin.tar.gz"
      sha256 "bac6309ed5e4f36af534bd4cabee07ddfcc508ba677e57ed720a329a95c32f73"
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
