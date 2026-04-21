cask "killswitch" do
  version "1.0.1"
  sha256 "09352b3f5d5b99f2f97807b907d0c49b54cede99a3852decd1171afe9a1dcbe1"

  url "https://github.com/DrakeMikels/KillSwitch/releases/download/v1.0.1/KillSwitch.zip"
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
