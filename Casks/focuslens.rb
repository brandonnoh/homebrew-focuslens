cask "focuslens" do
  version "1.2.1"
  sha256 "39d1b95887e4e0f88695e804125534b4d3aa4b8a25a6d54263127d96f9226100"

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
