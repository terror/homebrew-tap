class Ocs < Formula
  desc "Session picker for opencode"
  homepage "https://github.com/terror/ocs"
  url "https://github.com/terror/ocs/archive/refs/tags/0.1.5.tar.gz"
  sha256 "33163528038c729b4abf98a84e002e4884af9623b4a55e613283dbfdab4b0999"
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
