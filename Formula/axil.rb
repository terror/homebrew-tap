class Axil < Formula
  desc "TUI for tree-sitter"
  homepage "https://github.com/terror/axil"
  url "https://github.com/terror/axil/archive/refs/tags/0.2.1.tar.gz"
  sha256 "1b3e95d85884d731c424aa9466af7343a35f1d4607e3b3353b08803c8d08b58e"
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
