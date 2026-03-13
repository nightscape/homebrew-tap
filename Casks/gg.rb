cask "gg" do
  version "0.39.1"
  sha256 "98b88d598cf614cbf722df9abbd9e2a2b218cf5e8b6b8ea9b94890cc666c879f"

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
