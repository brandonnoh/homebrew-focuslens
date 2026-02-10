cask "focuslens" do
  version "1.2.17"
  sha256 "5437e47d79e2ef708757221efc7384d58b3ca1d95f35bea51d36bdbb075f95bc"

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
