class Spymux < Formula
  desc "Centralized view for all of your tmux panes"
  homepage "https://github.com/terror/spymux"
  url "https://github.com/terror/spymux/archive/refs/tags/0.1.2.tar.gz"
  sha256 "24aa9d21d1d9e76cfa1a53de7ffeae236066027bb2729cd41491592860ee12ed"
  license "CC0-1.0"
  head "https://github.com/terror/spymux.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spymux --version")
  end
end
