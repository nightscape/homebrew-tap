cask "kiln" do
  version "0.24.0"
  sha256 "805b29cb34a4009e5e64f7719d4343771b9a9557a5c9eed7f83f9a017d5c8ef6"

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
