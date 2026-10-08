class JustLsp < Formula
  desc "Language server for just"
  homepage "https://github.com/terror/just-lsp"
  url "https://github.com/terror/just-lsp/archive/refs/tags/0.10.0.tar.gz"
  sha256 "a3c91860a0f35b76ace3d1f4a06de9caa3757254fa31d481bc6d10476ecc7c28"
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
