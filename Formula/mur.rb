class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur-core"
  url "https://github.com/mur-run/mur-core/archive/refs/tags/v1.15.0.tar.gz"
  sha256 "fce88699d7e57acc62609eefd66f4b006c82a615d53ba65740563fa11f70d6ed"
  license "MIT"
  head "https://github.com/mur-run/mur-core.git", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    ldflags = %W[
      -s -w
      -X github.com/mur-run/mur-core/cmd/mur/cmd.Version=#{version}
      -X github.com/mur-run/mur-core/cmd/mur/cmd.Commit=#{tap.user}
      -X github.com/mur-run/mur-core/cmd/mur/cmd.BuildDate=#{time.iso8601}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags.join(" ")), "./cmd/mur"
  end

  def post_install
    ohai "mur installed! Run 'mur init --hooks' to get started."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mur version")
  end
end
