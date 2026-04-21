cask "killswitch" do
  version "1.0.0"
  sha256 "dfab6a499ff60b2924cb53665c48d448ed1d47736ab9961cd58bbd98250d57d4"

  url "https://github.com/DrakeMikels/KillSwitch/releases/download/v1.0.0/KillSwitch.zip"
  name "KillSwitch"
  desc "Lightweight macOS menu bar utility for seeing memory pressure and quickly quitting heavy apps"
  homepage "https://github.com/DrakeMikels/KillSwitch"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "KillSwitch.app"

  zap trash: [
    "~/Library/Application Support/KillSwitch",
    "~/Library/Preferences/com.killswitch.app.plist",
  ]
end
