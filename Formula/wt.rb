class Wt < Formula
  desc "Simple git worktree manager"
  homepage "https://github.com/terror/wt"
  url "https://github.com/terror/wt/archive/refs/tags/0.2.0.tar.gz"
  sha256 "9b549c8c8eab73cce7e8c81486f0953e08060ba9417ece3f8b5b8dce8e830c8d"
  license "CC0-1.0"
  head "https://github.com/terror/wt.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt --version")
  end
end
