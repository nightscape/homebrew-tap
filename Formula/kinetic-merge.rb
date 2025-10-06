class KineticMerge < Formula
  desc "Merge a heavily refactored codebase and stay sane"
  homepage "https://github.com/sageserpent-open/kineticMerge"
  url "https://github.com/sageserpent-open/kineticMerge/releases/download/v1.9.1/kinetic-merge"

  sha256 "bccbb77ecc67adce68ad6749109d8e4813badfd0b424cb4337ee94fb053cff19"

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
