class MurCommander < Formula
  desc "Autonomous workflow execution agent with multi-model AI orchestration"
  homepage "https://github.com/mur-run/mur-commander"
  url "https://github.com/mur-run/mur-commander/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"
  head "https://github.com/mur-run/mur-commander.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "murc"
    system "cargo", "build", "--release", "--bin", "mur-daemon"
    bin.install "target/release/murc"
    bin.install "target/release/mur-daemon"

    # Install sample workflows
    (share/"mur-commander/workflows").install Dir["examples/workflows/*.yaml"]

    # Install default constitution
    (share/"mur-commander").install "config/constitution.default.toml"
  end

  def post_install
    ohai "MUR Commander v#{version} installed!"
    ohai "Run 'murc start' to start the daemon."
    ohai "Run 'murc constitution sign' to set up safety rules."
    ohai "Sample workflows installed to #{share}/mur-commander/workflows/"
  end

  test do
    assert_match "murc", shell_output("#{bin}/murc --help")
  end
end
