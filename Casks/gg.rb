cask "gg" do
  version "0.37.1"
  sha256 "aa883965470f0dc8315f5a9c959a43f760762daca7c080856d9a2889585ae000"

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
