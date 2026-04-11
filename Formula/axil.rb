class Axil < Formula
  desc "TUI for tree-sitter"
  homepage "https://github.com/terror/axil"
  url "https://github.com/terror/axil/archive/refs/tags/0.2.2.tar.gz"
  sha256 "3ec0c8d595afba97236cab9f6e7316dd9f47a437b821769ea37b46384a5c4b69"
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
