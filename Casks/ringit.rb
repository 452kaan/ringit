cask "ringit" do
  version "1.1.0"
  sha256 "6f6b4010300d76c8305e0ab30caa46547339912c5352cd22d2c0e19e03ac6ef7"

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
