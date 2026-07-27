class Ocs < Formula
  desc "Session picker for opencode"
  homepage "https://github.com/terror/ocs"
  url "https://github.com/terror/ocs/archive/refs/tags/0.1.2.tar.gz"
  sha256 "64b59e87f4825591510885da5f3c4f5d592032a0b5cd18b52ab57cd66cd007bc"
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
