class Glimpse < Formula
  desc "Blazingly fast tool for peeking at codebases"
  homepage "https://github.com/seatedro/glimpse"
  url "https://github.com/seatedro/glimpse/archive/refs/tags/v0.7.4.tar.gz"
  sha256 "22e96a9a6c93609f0cd6f01ed37c66b5ad6b8c4e806bac8f7a7fb1a05e666dee"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/glimpse", "--version"
  end
end
