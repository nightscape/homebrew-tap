class Kanata < Formula
  desc "Improve keyboard comfort and usability with advanced customization"
  homepage "https://github.com/jtroo/kanata"
  url "https://github.com/jtroo/kanata/archive/refs/tags/v1.10.0.tar.gz"

  sha256 "6c2d0bec8390cd0d7807aeb2550d0888434cd71d3e8c89a2765c18dd53b946ac"
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
