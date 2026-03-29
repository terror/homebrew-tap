class Axil < Formula
  desc "TUI for tree-sitter"
  homepage "https://github.com/terror/axil"
  url "https://github.com/terror/axil/archive/refs/tags/0.2.0.tar.gz"
  sha256 "0025637be76eb0d13bd275822114a3e364b52c9d65cfd6ff7dc84c0558d5992d"
  license "CC0-1.0"
  head "https://github.com/terror/axil.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axil --version")
  end
end
