class Glimpse < Formula
  desc "Blazingly fast tool for peeking at codebases"
  homepage "https://github.com/seatedro/glimpse"
  url "https://github.com/seatedro/glimpse/archive/refs/tags/v0.6.3.tar.gz"
  sha256 "9a1144c8506f79649207ef87345260a112dac2784345e66cab3baa101764e81a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/glimpse", "--version"
  end
end
