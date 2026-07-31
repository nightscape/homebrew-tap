cask "kiln" do
  version "1.0.2"
  sha256 "19edf81654cfcc1f454eb0caa76ac7a46968d2f28ab2fb37a2e9b55be2314324"

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
