class Kotomori < Formula
  desc "Coding agent focused on performance and simplicity"
  homepage "https://github.com/terror/kotomori"
  url "https://github.com/terror/kotomori/archive/refs/tags/0.1.0.tar.gz"
  sha256 "fad6625f6fc01a96423712d910ce85b5d1efba33cebab403e96cae5554b14bee"
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
