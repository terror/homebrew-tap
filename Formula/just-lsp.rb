class JustLsp < Formula
  desc "Language server for just"
  homepage "https://github.com/terror/just-lsp"
  url "https://github.com/terror/just-lsp/archive/refs/tags/0.5.1.tar.gz"
  sha256 "cdcd87b0307dbb1a77f8fb2755dfdfe487138cf98f235762fb035831ccf34e37"
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
