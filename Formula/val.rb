class Val < Formula
  desc "Arbitrary precision calculator language"
  homepage "https://github.com/terror/val"
  url "https://github.com/terror/val/archive/refs/tags/0.3.6.tar.gz"
  sha256 "c3a19b91a83829709af2bf773c034361beb01b1cc7f5fa392a44f94579647ff7"
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
