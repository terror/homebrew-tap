class JustLsp < Formula
  desc "Language server for just"
  homepage "https://github.com/terror/just-lsp"
  url "https://github.com/terror/just-lsp/archive/refs/tags/0.4.4.tar.gz"
  sha256 "052f0733252fc03f34cb1185cc1e905db46ed8bfe54c8897f7a118ff1b02655e"
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
