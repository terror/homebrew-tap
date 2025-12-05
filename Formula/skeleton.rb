class Skeleton < Formula
  desc "Project scaffolding utility"
  homepage "https://github.com/terror/skeleton"
  url "https://github.com/terror/skeleton/archive/refs/tags/0.2.3.tar.gz"
  sha256 "8ccf115cdbb29a4a24de6d4965dc7098ea8d64bc0837bac0104cb366cb464575"
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
