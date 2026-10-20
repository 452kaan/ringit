cask "ringit" do
  version "1.1.1"
  sha256 "0c20286e368cb5e1104c64b8b2fbb50b9b1868ece7d3878dee8afab6555a82c1"

  url "https://github.com/452kaan/ringit/releases/download/v#{version}/Ringit.dmg"
  name "Ringit"
  desc "Small Git ring for the menu bar: pull, add, commit and push"
  homepage "https://github.com/452kaan/ringit"

  depends_on macos: ">= :monterey"

  app "Ringit.app"

  uninstall quit:       "io.github.452kaan.ringit",
            launchctl:  "io.github.452kaan.ringit"

  zap trash: [
    "~/Library/LaunchAgents/io.github.452kaan.ringit.plist",
    "~/Library/Preferences/io.github.452kaan.ringit.plist",
  ]
end
