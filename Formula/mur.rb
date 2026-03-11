class Mur < Formula
  desc "Invisible continuous learning system for AI coding assistants"
  homepage "https://github.com/mur-run/mur"
  license "MIT"
  version "2.1.3"

  on_macos do
    on_arm do
      url "https://github.com/mur-run/mur/releases/download/v2.1.3/mur-aarch64-apple-darwin.tar.gz"
      sha256 "86478def5d0ffde4257627014443646f9017b30e942936752c960ba0e2e2169b"
    end
  end

  def install
    bin.install "mur"
  end

  def post_install
    ohai "mur v2.1.3 installed! Run 'mur init --hooks' to get started."
    ohai "New: Language-aware scoring, post-session menu, model quality warnings"
    ohai "Dashboard embedded — run 'mur serve' to open."
  end

  test do
    assert_match "mur 2", shell_output("#{bin}/mur --version")
  end
end
