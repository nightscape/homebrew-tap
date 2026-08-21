cask "kiln" do
  version "1.1.1"
  sha256 "92b1c0ac35a4bb3478985d5fa637e79d9a776921badc893d88b1d001dff7f5c4"

  url "https://github.com/Kiln-AI/Kiln/releases/download/v#{version}/Kiln.MacOS.AppleSilicon.M-Processor.dmg",
      verified: "github.com/Kiln-AI/Kiln/"
  name "kiln"
  desc "Fine-tune LLM models, generate synthetic data, and collaborate on datasets"
  homepage "https://docs.getkiln.ai/"

  livecheck do
    url "https://github.com/Kiln-AI/Kiln/releases/"
    strategy :GithubReleases
  end

  depends_on macos: :catalina

  app "Kiln.app"

  zap trash: ""
end
