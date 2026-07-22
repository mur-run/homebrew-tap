class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.53.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.53.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "462e6473bfd194d0ca9b7ba2a309039eef584fd480d4073949f5e5c0f9a421ea"
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
