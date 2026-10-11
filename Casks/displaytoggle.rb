cask "displaytoggle" do
  version "1.0.1"
  sha256 "887dc7d33e01637c407ff559a03fa8c776e0ec897fc65b22658b45035e4b7998"

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
