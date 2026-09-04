class KineticMerge < Formula
  desc "Merge a heavily refactored codebase and stay sane"
  homepage "https://github.com/sageserpent-open/kineticMerge"
  url "https://github.com/sageserpent-open/kineticMerge/releases/download/v1.19.0/kinetic-merge"

  sha256 "d6805c81174258c24451c7dbb21bfc2a650edc955b9fd044fd948b25cb6008b0"

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
