cask "kiln" do
  version "0.26.0"
  sha256 "5890a4677288455d640f850b3501c402b919334fb3f54456e907fad0e5b0b5f2"

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
