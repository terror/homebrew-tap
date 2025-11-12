class Present < Formula
  desc "Interpolate shell command output directly into markdown"
  homepage "https://github.com/terror/present"
  url "https://github.com/terror/present/archive/refs/tags/0.2.3.tar.gz"
  sha256 "8f325358f971b32ac2b8ab50b69ff9a2edbc41510ba1396458bbfc296ee1d097"
  license "CC0-1.0"
  head "https://github.com/terror/present.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/present --version")
  end
end
