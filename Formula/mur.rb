class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  url "https://github.com/mur-run/mur/archive/refs/tags/v2.0.0-alpha.13.tar.gz"
  sha256 "4e85af9f83beabb286de11f9bc8f3bf88a427d5fddd223441c66b8a300717af1"
  license "MIT"
  head "https://github.com/mur-run/mur.git", branch: "main"

  depends_on "protobuf" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "mur"
    bin.install "target/release/mur"
  end

  def post_install
    ohai "mur v2 installed! Run 'mur init --hooks' to get started."
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
