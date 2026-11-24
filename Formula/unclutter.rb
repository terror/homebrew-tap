class Unclutter < Formula
  desc "Extract readable content from HTML files"
  homepage "https://github.com/terror/unclutter"
  url "https://github.com/terror/unclutter/archive/refs/tags/0.2.0.tar.gz"
  sha256 "b65dec829062df554b8463b3ee7a7cf81c7d656f9fd3ada25a12e487815d995d"
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
