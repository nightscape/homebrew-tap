class Kanata < Formula
  desc "Improve keyboard comfort and usability with advanced customization"
  homepage "https://github.com/jtroo/kanata"
  url "https://github.com/jtroo/kanata/archive/refs/tags/v1.12.0.tar.gz"

  sha256 "7081073d1d22fe4e404cf8e7d1dfa3f72562fb2d96538367c07f64877dcbf87a"
  license "LGPL-3.0-or-later"
  head "https://github.com/jtroo/kanata.git", branch: "main"

  depends_on "rust" => :build
  depends_on "rustup" => :test

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kanata --version")
  end
end
