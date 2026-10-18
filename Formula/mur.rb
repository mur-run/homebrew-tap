class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.94.0"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.94.0/mur-aarch64-apple-darwin.tar.gz"
      sha256 "b8b09eacc9a65f6215860168fe2de832cdf8177fa2008795fc0f9726351db2aa"
    end
  end

  def install
    # The preceding workflow step verifies this archive against the
    # canonical manifest before updating the formula.
    bin.install Dir["*"]
    bin.install_symlink "mur" => "murmur"
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
