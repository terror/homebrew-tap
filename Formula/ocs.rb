class Ocs < Formula
  desc "Session picker for opencode"
  homepage "https://github.com/terror/ocs"
  url "https://github.com/terror/ocs/archive/refs/tags/0.2.0.tar.gz"
  sha256 "c8e29bbacd96d7a6adef5a3db72475d38ccd9547bba4db9135430ba70369f2d1"
  license "CC0-1.0"
  head "https://github.com/terror/ocs.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ocs --version")
  end
end
