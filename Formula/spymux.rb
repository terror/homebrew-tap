class Spymux < Formula
  desc "Centralized view for all of your tmux panes"
  homepage "https://github.com/terror/spymux"
  url "https://github.com/terror/spymux/archive/refs/tags/0.1.0.tar.gz"
  sha256 "0ee8560f484c3970ad442fe8adec7506949dfeb6bb6de92169f4e48acf72143e"
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
