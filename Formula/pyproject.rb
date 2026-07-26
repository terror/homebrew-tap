class Pyproject < Formula
  desc "Linter and language server for pyproject.toml files"
  homepage "https://github.com/terror/pyproject"
  url "https://github.com/terror/pyproject/archive/refs/tags/0.2.1.tar.gz"
  sha256 "03b0744cbd386d89a60531c67189dca2f05e8d07a33a0eb6fb012a8d7b9594f1"
  license "CC0-1.0"
  head "https://github.com/terror/pyproject.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pyproject --version")
  end
end
