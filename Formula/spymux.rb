class Spymux < Formula
  desc "Centralized view for all of your tmux panes"
  homepage "https://github.com/terror/spymux"
  url "https://github.com/terror/spymux/archive/refs/tags/0.1.3.tar.gz"
  sha256 "457a4523967285ba1d864394022a31734c4474b01ff3ec08e874a70fbc8915b9"
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
