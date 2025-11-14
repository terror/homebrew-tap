class Spymux < Formula
  desc "Centralized view for all of your tmux panes"
  homepage "https://github.com/terror/spymux"
  url "https://github.com/terror/spymux/archive/refs/tags/0.1.1.tar.gz"
  sha256 "5ad693327cb9e5d9de2fa3439498de8df9490c95b3fd00e0098ecc2b992380ef"
  license "CC0-1.0"
  head "https://github.com/terror/spymux.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spymux --version")
  end
end
