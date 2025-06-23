class Kanata < Formula
  desc "Improve keyboard comfort and usability with advanced customization"
  homepage "https://github.com/jtroo/kanata"
  url "https://github.com/jtroo/kanata/archive/refs/tags/v1.9.0.tar.gz"

  sha256 "754bed4c7317ae14c228288f3a24d23ab6c245e067f996336fc03b58f71c34b6"
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
