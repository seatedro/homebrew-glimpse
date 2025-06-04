class Glimpse < Formula
  desc "Blazingly fast tool for peeking at codebases"
  homepage "https://github.com/seatedro/glimpse"
  url "https://github.com/seatedro/glimpse/archive/refs/tags/v0.7.6.tar.gz"
  sha256 "fd80b38b0c7fd7280e062bc8674bc09bdb01e3a1700baad324201f501b4e5852"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/glimpse", "--version"
  end
end
