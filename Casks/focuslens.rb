cask "focuslens" do
  version "1.2.0"
  sha256 "d006fd608afe482436f852ccac061045aaeed2f380ef2b833b2e34edbbfa2068"

  url "https://github.com/brandonnoh/FocusLens/releases/download/v#{version}/FocusLens-#{version}.dmg"
  name "FocusLens"
  desc "Gaze-based focus time tracker - measures only when you're looking at the screen"
  homepage "https://github.com/brandonnoh/FocusLens"

  depends_on macos: ">= :sonoma"

  app "FocusLens.app"

  zap trash: [
    "~/Library/Preferences/com.focuslens.app.plist",
    "~/Library/Application Support/FocusLens",
    "~/Library/Caches/com.focuslens.app",
    "~/Library/Group Containers/group.com.focuslens.shared",
  ]
end
