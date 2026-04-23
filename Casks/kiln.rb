cask "kiln" do
  version "0.28.0"
  sha256 "df1427b2ff1096973e8e3f4a7e085481c70dfebf0345544155b8e711f2518416"

  url "https://github.com/Kiln-AI/Kiln/releases/download/v#{version}/Kiln.MacOS.AppleSilicon.M-Processor.dmg",
      verified: "github.com/Kiln-AI/Kiln/"
  name "kiln"
  desc "Fine-tune LLM models, generate synthetic data, and collaborate on datasets"
  homepage "https://docs.getkiln.ai/"

  livecheck do
    url "https://github.com/Kiln-AI/Kiln/releases/"
    strategy :GithubReleases
  end

  depends_on macos: ">= :catalina"

  app "Kiln.app"

  zap trash: ""
end
