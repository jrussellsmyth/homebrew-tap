cask "displaytoggle" do
  version "1.0.0"
  sha256 "3ad8b8dd15df64d6b0bfd3f1eb59dfa60a59fd294e989e38a9188abded9ef8a8"

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
