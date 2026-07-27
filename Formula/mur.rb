class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.59.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.59.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "b6d84f0c745409b0f71dab7226294018f3f8e235678c17618ce25c10f303b274"
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
