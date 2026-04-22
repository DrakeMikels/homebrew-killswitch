cask "killswitch" do
  version "1.0.2"
  sha256 "f1f3e5deee46d0e101527cde4944fc404bbad8dcb04fff55b7a80df6c9ea68df"

  url "https://github.com/DrakeMikels/KillSwitch/releases/download/v1.0.2/KillSwitch.zip"
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
