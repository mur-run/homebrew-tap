class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.24.4"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.24.4/mur-aarch64-apple-darwin.tar.gz"
      sha256 "9f1133af59f787b81a58b0e70ee66610fef9c8fb4ca045f74c7b0fd11e1ec671"
    end
  end

  def install
    bin.install "mur"
    bin.install "mur-mcp-server"
    bin.install_symlink "mur" => "murmur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
