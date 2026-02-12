cask "focuslens" do
  version "1.8.1"
  sha256 "8e16880cf8a8b69c94f7c282b07f5cc8a2dd665633d56a45a2f4865fe0aa81cc"

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
  ]
end
