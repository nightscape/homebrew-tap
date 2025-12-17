class Kanata < Formula
  desc "Improve keyboard comfort and usability with advanced customization"
  homepage "https://github.com/jtroo/kanata"
  url "https://github.com/jtroo/kanata/archive/refs/tags/v1.10.1.tar.gz"

  sha256 "c61ea1405e2822ee7c2ab151d8b6160b9061d8bd89abf7ce6abf0da1ce91cea5"
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
