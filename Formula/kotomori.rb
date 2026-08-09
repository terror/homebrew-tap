class Kotomori < Formula
  desc "Coding agent focused on performance and simplicity"
  homepage "https://github.com/terror/kotomori"
  url "https://github.com/terror/kotomori/archive/refs/tags/0.2.0.tar.gz"
  sha256 "de2650dd78dfb0429f6cebef3723250656157364931366f8a5e93306fe1f63f7"
  license "CC0-1.0"
  head "https://github.com/terror/kotomori.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kotomori --version")
  end
end
