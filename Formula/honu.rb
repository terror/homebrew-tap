class Honu < Formula
  desc "Back up and search your shell history with SQLite"
  homepage "https://github.com/terror/honu"
  url "https://github.com/terror/honu/archive/refs/tags/0.1.1.tar.gz"
  sha256 "e3bab211b2baf88d04f1745dca91c4cbd0e0433e4f845c67e7ff9cb723691829"
  license "CC0-1.0"
  head "https://github.com/terror/honu.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honu --version")
  end
end
