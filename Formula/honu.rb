class Honu < Formula
  desc "Back up and search your shell history with SQLite"
  homepage "https://github.com/terror/honu"
  url "https://github.com/terror/honu/archive/refs/tags/0.1.2.tar.gz"
  sha256 "79012595c5556ef0103c51ef430e1db7b9eee34a5a7f90c5b956f8a513217456"
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
