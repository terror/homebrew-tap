class JustLsp < Formula
  desc "Language server for just"
  homepage "https://github.com/terror/just-lsp"
  url "https://github.com/terror/just-lsp/archive/refs/tags/0.12.0.tar.gz"
  sha256 "094d17ebd1457571ffa0c75de165303495eb74a902efd0c3d1f5667975a797ca"
  license "CC0-1.0"
  head "https://github.com/terror/just-lsp.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/just-lsp --version")
  end
end
