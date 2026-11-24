class Unclutter < Formula
  desc "Extract readable content from HTML files"
  homepage "https://github.com/terror/unclutter"
  url "https://github.com/terror/unclutter/archive/refs/tags/0.1.0.tar.gz"
  sha256 "8e84308d7075944e2158428d4508afff0eedbd90e41225d59da52ef03955246a"
  license "CC0-1.0"
  head "https://github.com/terror/unclutter.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "Usage: unclutter", shell_output("#{bin}/unclutter --help")
  end
end
