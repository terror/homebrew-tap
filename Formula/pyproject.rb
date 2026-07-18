class Pyproject < Formula
  desc "Linter and language server for pyproject.toml files"
  homepage "https://github.com/terror/pyproject"
  url "https://github.com/terror/pyproject/archive/refs/tags/0.1.3.tar.gz"
  sha256 "06d759fbbf9af3c6d1cec43c1f658bf61cdff58f97713af3c3d74a98d8c8dc34"
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
