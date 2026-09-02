class KineticMerge < Formula
  desc "Merge a heavily refactored codebase and stay sane"
  homepage "https://github.com/sageserpent-open/kineticMerge"
  url "https://github.com/sageserpent-open/kineticMerge/releases/download/v1.18.0/kinetic-merge"

  sha256 "1551dbef2a9037edd38f0f5a56da189c3d131a63977c548dc9b895f89a88e417"

  license "MIT"

  livecheck do
    url "https://github.com/sageserpent-open/kineticMerge/releases/"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "openjdk"

  def install
    libexec.install Dir["*"].shift => "kinetic-merge"
    chmod 0555, libexec/"kinetic-merge"
    (bin/"kinetic-merge").write_env_script libexec/"kinetic-merge", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "kinetic-merge #{version}", shell_output("#{bin}/kinetic-merge --help")
  end
end
