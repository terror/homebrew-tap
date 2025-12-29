class Swab < Formula
  desc "Configurable project cleaning tool"
  homepage "https://github.com/terror/swab"
  url "https://github.com/terror/swab/archive/refs/tags/0.1.0.tar.gz"
  sha256 "2a61220290d8860883f099774b5509664f26c609abdd0317d2eac93ba6977088"
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
