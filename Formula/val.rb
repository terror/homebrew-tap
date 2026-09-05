class Val < Formula
  desc "Arbitrary precision calculator language"
  homepage "https://github.com/terror/val"
  url "https://github.com/terror/val/archive/refs/tags/0.4.2.tar.gz"
  sha256 "aebc39725080e445a694b594812c3a1d1c58f88ad8efefc83d72619abc3c33a2"
  license "CC0-1.0"
  head "https://github.com/terror/val.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/val --version")
  end
end
