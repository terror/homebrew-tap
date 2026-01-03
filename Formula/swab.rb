class Swab < Formula
  desc "Configurable project cleaning tool"
  homepage "https://github.com/terror/swab"
  url "https://github.com/terror/swab/archive/refs/tags/0.1.2.tar.gz"
  sha256 "39dd080caa629749a870f526dd84ad35459f0dbe8af7c43fbaf3a6c124ad8dbe"
  license "CC0-1.0"
  head "https://github.com/terror/swab.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swab --version")
  end
end
