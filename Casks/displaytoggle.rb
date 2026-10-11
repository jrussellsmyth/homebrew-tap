cask "displaytoggle" do
  version "1.0.2"
  sha256 "cf0527ef351d2f4ebd96368d84f86ae782ef1685eff4b7686fd3b687792f7444"

  url "https://github.com/jrussellsmyth/displaytoggle/releases/download/v#{version}/DisplayToggle.dmg"
  name "DisplayToggle"
  desc "Lightweight macOS menu bar tool to quickly toggle the primary display"
  homepage "https://github.com/jrussellsmyth/displaytoggle"

  depends_on macos: ">= :sequoia"

  app "DisplayToggle.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/DisplayToggle.app"],
      must_succeed: false
  end

  zap trash: [
    "~/Library/Preferences/com.displaytoggle.DisplayToggleApp.plist",
  ]
end
