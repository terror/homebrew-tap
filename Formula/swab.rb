class Swab < Formula
  desc "Configurable project cleaning tool"
  homepage "https://github.com/terror/swab"
  url "https://github.com/terror/swab/archive/refs/tags/0.1.1.tar.gz"
  sha256 "899b5cb4deb6cbe93afd7b28adddbf5d8f193812b29dcfac002641a4038da3fc"
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
