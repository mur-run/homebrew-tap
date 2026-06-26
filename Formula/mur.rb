class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.28.1"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.28.1/mur-aarch64-apple-darwin.tar.gz"
      sha256 "0bac1206e923886e9903d63ccca91109ef6238bd1fd4cf3bf60edcfbb90adf7d"
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
