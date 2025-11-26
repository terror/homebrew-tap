class Pyproject < Formula
  desc "Linter and language server for pyproject.toml files"
  homepage "https://github.com/terror/pyproject"
  url "https://github.com/terror/pyproject/archive/refs/tags/0.1.0.tar.gz"
  sha256 "e2aa850d1b8506bd60b207b2656f94283907c06da906d8fd0b57c305ee84d7af"
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
