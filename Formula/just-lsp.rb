class JustLsp < Formula
  desc "Language server for just"
  homepage "https://github.com/terror/just-lsp"
  url "https://github.com/terror/just-lsp/archive/refs/tags/0.2.8.tar.gz"
  sha256 "b8fca056013f034951cf92d0dae1ffde3a2b18e192d4d39ebd9af15fefae9f1f"
  license "CC0-1.0"
  head "https://github.com/terror/just-lsp.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/just-lsp --version")
  end
end
