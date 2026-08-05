class Honu < Formula
  desc "Back up and search your shell history with SQLite"
  homepage "https://github.com/terror/honu"
  url "https://github.com/terror/honu/archive/refs/tags/0.1.0.tar.gz"
  sha256 "f73078963f85b5d7e142ef5f001c1d53ebfcb49f41af5487a999780d20d71a6b"
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
