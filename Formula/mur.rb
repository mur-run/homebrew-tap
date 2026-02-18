class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur-core"
  url "https://github.com/mur-run/mur-core/archive/refs/tags/v1.8.3.tar.gz"
  sha256 "30cf9e5fdf2b20d72525fea3685a1f904ec48a415ac26eb3c470406292a3f8a0"
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
