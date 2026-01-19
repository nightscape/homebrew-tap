cask "gg" do
  version "0.37.2"
  sha256 "7b688dd1ce210b5e0f4389c6d185696a8d236ac1bde646b9fd942393f715040c"

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
