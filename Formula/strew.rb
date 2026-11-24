class Strew < Formula
  desc "Tool to manage your dotfiles"
  homepage "https://github.com/terror/strew"
  url "https://github.com/terror/strew/archive/refs/tags/0.1.1.tar.gz"
  sha256 "2e12e7b61f1f30c4ec7461c7f18494c3fb0eabc6121fdf196a8db3e277ccc18b"
  license "CC0-1.0"
  head "https://github.com/terror/strew.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strew --version")
  end
end
