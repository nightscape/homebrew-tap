cask "gg" do
  version "0.36.0"
  sha256 "a1d5d850b476f69c7bfb3103c959fd3c20cc04cb213139f8a66324c33cab17a8"

  url "https://github.com/gulbanana/gg/releases/download/v#{version}/gg_#{version}_universal.dmg"
  name "gg"
  desc "Gui for JJ"
  homepage "https://github.com/gulbanana/gg"

  livecheck do
    url "https://github.com/gulbanana/gg/releases"
    strategy :GithubReleases
  end

  depends_on macos: ">= :catalina"

  app "GG.app"

  zap trash: [
    "~/Library/Application Support/GG",
    "~/Library/Caches/com.gulbanana.gg",
    "~/Library/Logs/GG",
    "~/Library/Preferences/com.gulbanana.gg.plist",
  ]
end
