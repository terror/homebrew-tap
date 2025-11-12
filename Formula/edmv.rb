class Edmv < Formula
  desc "Bulk rename files using your favorite editor"
  homepage "https://github.com/terror/edmv"
  url "https://github.com/terror/edmv/archive/refs/tags/1.0.1.tar.gz"
  sha256 "279b35bff5c713b262db438055eb61ba2aba6a6b9928717982d3003e64ac5209"
  license "CC0-1.0"
  head "https://github.com/terror/edmv.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edmv --version")
  end
end
