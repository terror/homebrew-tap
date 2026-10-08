class Val < Formula
  desc "Arbitrary precision calculator language"
  homepage "https://github.com/terror/val"
  url "https://github.com/terror/val/archive/refs/tags/0.5.0.tar.gz"
  sha256 "a13748f34e95528cd3ec8a63465428003e4f2aec6d191ad1d8e26bc663ed8ee5"
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
