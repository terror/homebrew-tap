class Wt < Formula
  desc "Simple git worktree manager"
  homepage "https://github.com/terror/wt"
  url "https://github.com/terror/wt/archive/refs/tags/0.1.1.tar.gz"
  sha256 "79cbcadb645b8d5b54631164e7de76eb83ecd803b10ab38d023b53f4bdfae7e4"
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
