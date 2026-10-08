class Kotomori < Formula
  desc "Coding agent focused on performance and simplicity"
  homepage "https://github.com/terror/kotomori"
  url "https://github.com/terror/kotomori/archive/refs/tags/0.3.1.tar.gz"
  sha256 "d2c9f7879ae9603dd6b852a8a3acdea87a476b10210c51210e1d7b5ca153a173"
  license "CC0-1.0"
  head "https://github.com/terror/kotomori.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kotomori --version")
  end
end
