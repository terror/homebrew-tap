class Pyproject < Formula
  desc "Linter and language server for pyproject.toml files"
  homepage "https://github.com/terror/pyproject"
  url "https://github.com/terror/pyproject/archive/refs/tags/0.1.1.tar.gz"
  sha256 "af09e6a73f083448f0d5463c68836522e1fd5c1ebb4e375ad5a38d007347425a"
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
