class KineticMerge < Formula
  desc "Merge a heavily refactored codebase and stay sane"
  homepage "https://github.com/sageserpent-open/kineticMerge"
  url "https://github.com/sageserpent-open/kineticMerge/releases/download/v1.6.15/kinetic-merge"

  sha256 "47bd3d660bd1e3fb4c7e72e09384f8fd46bc8222f1d8d646a6c1bde19f380b22"

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
