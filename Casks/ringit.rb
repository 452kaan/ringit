cask "ringit" do
  version "1.1.1"
  sha256 "5b0cee1be68eb5eea7a0cc49bedb2cd9f131f998b172d28dd0e6d894606b4925"

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
