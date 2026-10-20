cask "ringit" do
  version "1.2.0"
  sha256 "c8bf658cdeef039526646539aa42d5cc38284d364665e6a6da517a03819036c3"

  url "https://github.com/452kaan/ringit/releases/download/v#{version}/Ringit.dmg"
  name "Ringit"
  desc "Small Git ring for the menu bar: pull, add, commit and push"
  homepage "https://github.com/452kaan/ringit"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Ringit.app"

  uninstall quit:       "io.github.452kaan.ringit",
            launchctl:  "io.github.452kaan.ringit"

  zap trash: [
    "~/Library/LaunchAgents/io.github.452kaan.ringit.plist",
    "~/Library/Preferences/io.github.452kaan.ringit.plist",
  ]
end
