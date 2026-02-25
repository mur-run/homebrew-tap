class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  url "https://github.com/mur-run/mur/archive/refs/tags/v2.0.0-alpha.4.tar.gz"
  sha256 "83e29e1737ac0a5dc4300e535c7ba8be5e4a99c9a5abd49c62451a1f784e5979"
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
    ohai "If upgrading from v1, run 'mur migrate' to convert patterns."
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
