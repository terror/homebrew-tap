class Kotomori < Formula
  desc "Coding agent focused on performance and simplicity"
  homepage "https://github.com/terror/kotomori"
  url "https://github.com/terror/kotomori/archive/refs/tags/0.4.1.tar.gz"
  sha256 "6fb5dcea627bef05bba48f0b99b3f3a3a222dc0f2806e37c726874d3a6f0fb21"
  license "CC0-1.0"
  head "https://github.com/terror/kotomori.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kotomori --version")
  end
end
