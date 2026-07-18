class Ocs < Formula
  desc "Session picker for opencode"
  homepage "https://github.com/terror/ocs"
  url "https://github.com/terror/ocs/archive/refs/tags/0.1.1.tar.gz"
  sha256 "699f1ec485392c11e0cd0fb2d5a0fce445abe4679fcde70147a041175178e7f0"
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
