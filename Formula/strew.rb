class Strew < Formula
  desc "Tool to manage your dotfiles"
  homepage "https://github.com/terror/strew"
  url "https://github.com/terror/strew/archive/refs/tags/0.1.0.tar.gz"
  sha256 "13c4337b46f073bf58ba16651216725b1a59fcca97ea2bf65a1f04de415561de"
  license "CC0-1.0"
  head "https://github.com/terror/strew.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "Usage: strew", shell_output("#{bin}/strew --help")
  end
end
