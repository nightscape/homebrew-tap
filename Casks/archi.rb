cask "archi" do
  version "5.4.3"
  sha256 :no_check

  url "https://www.archimatetool.com/downloads/archi/#{version}/Archi-Mac-Silicon-#{version}.dmg"
  name "archi"
  desc "Open Source modelling toolkit for creating ArchiMate models and sketches"
  homepage "https://www.archimatetool.com/"

  depends_on :macos

  app "Archi.app"
end
