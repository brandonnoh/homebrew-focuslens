cask "focuslens" do
  version "1.2.11"
  sha256 "868434c46b898825283a4486ca34e64e6f60051e44acff40e2f5e502841e9b6e"

  url "https://github.com/brandonnoh/homebrew-focuslens/releases/download/v#{version}/FocusLens-#{version}.dmg"
  name "FocusLens"
  desc "Gaze-based focus time tracker - measures only when you're looking at the screen"
  homepage "https://focuslens.app"

  depends_on macos: ">= :sonoma"

  app "FocusLens.app"

  zap trash: [
    "~/Library/Preferences/com.focuslens.app.plist",
    "~/Library/Application Support/FocusLens",
    "~/Library/Caches/com.focuslens.app",
    "~/Library/Group Containers/group.com.focuslens.shared",
  ]
end
