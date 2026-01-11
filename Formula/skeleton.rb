class Skeleton < Formula
  desc "Project scaffolding utility"
  homepage "https://github.com/terror/skeleton"
  url "https://github.com/terror/skeleton/archive/refs/tags/0.2.4.tar.gz"
  sha256 "e2060d6d905b11f410d7687d47286101d17cbbed3d8b80ddcc839f9c18a96f38"
  license "CC0-1.0"
  head "https://github.com/terror/skeleton.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sk --version")
  end
end
