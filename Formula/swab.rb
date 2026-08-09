class Swab < Formula
  desc "Configurable project cleaning tool"
  homepage "https://github.com/terror/swab"
  url "https://github.com/terror/swab/archive/refs/tags/0.1.5.tar.gz"
  sha256 "fbdfc85d0d9a552032f9c97dac71ae08c36aa8da0116e01fa468a904c838166b"
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
