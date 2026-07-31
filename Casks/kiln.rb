cask "kiln" do
  version "1.0.4"
  sha256 "b95343206b905371876fa5315e3f45a52c8df0e6793cf72a59cab97a14a45d09"

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
