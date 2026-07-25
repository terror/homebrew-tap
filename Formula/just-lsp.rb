class JustLsp < Formula
  desc "Language server for just"
  homepage "https://github.com/terror/just-lsp"
  url "https://github.com/terror/just-lsp/archive/refs/tags/0.5.0.tar.gz"
  sha256 "ceb3a2ec7c8d0c1cae4dd8e542303892e679b70a85393dc99766654e77207df2"
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
