class Unclutter < Formula
  desc "Extract readable content from HTML files"
  homepage "https://github.com/terror/unclutter"
  url "https://github.com/terror/unclutter/archive/refs/tags/0.1.1.tar.gz"
  sha256 "e7935b7874bd5f17fda06dca8a0199a60ca8975dd12f913354343328c1a3aaa0"
  license "CC0-1.0"
  head "https://github.com/terror/unclutter.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unclutter --version")
  end
end
