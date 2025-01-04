class Glimpse < Formula
  desc "Blazingly fast tool for peeking at codebases"
  homepage "https://github.com/seatedro/glimpse"
  url "https://github.com/seatedro/glimpse/archive/refs/tags/v0.6.10.tar.gz"
  sha256 "85c738249b1c784e76772542f43495916cb3a1dec47f7d9a31418b9ea4727fa0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/glimpse", "--version"
  end
end
