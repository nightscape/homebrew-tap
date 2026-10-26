cask "kiln" do
  version "1.2.0"
  sha256 "e690768c4be563673736260621f62d05371e37bcd6c72e72864dda6696f38c65"

  url "https://github.com/Kiln-AI/Kiln/releases/download/v#{version}/Kiln.MacOS.AppleSilicon.M-Processor.dmg"
  name "kiln"
  desc "Fine-tune LLM models, generate synthetic data, and collaborate on datasets"
  homepage "https://docs.getkiln.ai/"

  livecheck do
    url "https://github.com/Kiln-AI/Kiln/releases/"
    strategy :GithubReleases
  end

  depends_on :macos

  app "Kiln.app"

  zap trash: ""
end
