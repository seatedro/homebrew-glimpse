class Glimpse < Formula
  desc "Blazingly fast tool for peeking at codebases"
  homepage "https://github.com/seatedro/glimpse"
  url "https://github.com/seatedro/glimpse/archive/refs/tags/v0.7.7.tar.gz"
  sha256 "55ab69a0666b22a41457d7d91b9200beaa981c2fd31fca2336041c299829917b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/glimpse", "--version"
  end
end
