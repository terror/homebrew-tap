class Pyproject < Formula
  desc "Linter and language server for pyproject.toml files"
  homepage "https://github.com/terror/pyproject"
  url "https://github.com/terror/pyproject/archive/refs/tags/0.1.2.tar.gz"
  sha256 "a734f0e8535be4c914fc84056ea2a6627392ca7868ae89ac1ad82e56141fd3a3"
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
