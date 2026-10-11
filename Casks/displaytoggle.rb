cask "displaytoggle" do
  version "1.0.1"
  sha256 "2e5307ea7ad15d751de710f2b18555d282ab39e52520361ccc668c67028b6cfe"

  url "https://github.com/jrussellsmyth/displaytoggle/releases/download/v#{version}/DisplayToggle.dmg"
  name "DisplayToggle"
  desc "Lightweight macOS menu bar tool to quickly toggle the primary display"
  homepage "https://github.com/jrussellsmyth/displaytoggle"

  depends_on macos: ">= :sequoia"

  app "DisplayToggle.app"

  zap trash: [
    "~/Library/Preferences/com.displaytoggle.DisplayToggleApp.plist",
  ]
end
