class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  url "https://github.com/mur-run/mur/archive/refs/tags/v2.0.0-alpha.20.tar.gz"
  sha256 "0b167dc383bb3da8195afca820f4af85aa54d02a171cb3eed203dffdaa0c7126"
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
