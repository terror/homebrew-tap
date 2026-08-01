class Ocs < Formula
  desc "Session picker for opencode"
  homepage "https://github.com/terror/ocs"
  url "https://github.com/terror/ocs/archive/refs/tags/0.1.3.tar.gz"
  sha256 "3d85c01b76453f858376f88650faca6d4491cb68cd1b7770d5d3b397283dbf1a"
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
