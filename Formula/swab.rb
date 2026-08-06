class Swab < Formula
  desc "Configurable project cleaning tool"
  homepage "https://github.com/terror/swab"
  url "https://github.com/terror/swab/archive/refs/tags/0.1.4.tar.gz"
  sha256 "d0d75243dc877f0d59dac6f0aab70e7e2eb4ecd941cbc429f94b6bfefc0a918c"
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
