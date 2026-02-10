class Wt < Formula
  desc "Simple git worktree manager"
  homepage "https://github.com/terror/wt"
  url "https://github.com/terror/wt/archive/refs/tags/0.1.2.tar.gz"
  sha256 "0e1af54e9701dd7bd6199e4e061f05b831eba6a1dedbf460a3ef41f1ddff22e5"
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
