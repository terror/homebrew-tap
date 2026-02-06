class Wt < Formula
  desc "Simple git worktree manager"
  homepage "https://github.com/terror/wt"
  url "https://github.com/terror/wt/archive/refs/tags/0.1.0.tar.gz"
  sha256 "6f101abe2ee864dadea7f611a33121d26bd74f9f2cefd38467d3c587c23cab3e"
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
