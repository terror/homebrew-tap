class Val < Formula
  desc "Arbitrary precision calculator language"
  homepage "https://github.com/terror/val"
  url "https://github.com/terror/val/archive/refs/tags/0.4.0.tar.gz"
  sha256 "38df3498c3103b3236999dc6fbc5a24295b5abd927950d074ffa7640a652a816"
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
