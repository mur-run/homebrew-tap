class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur-core"
  url "https://github.com/mur-run/mur-core/archive/refs/tags/v1.14.13.tar.gz"
  sha256 "b9d9f5f558cf7c8e081f74b638fbf3991f6e05014dc0275aedbfcb4717f6e41a"
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
