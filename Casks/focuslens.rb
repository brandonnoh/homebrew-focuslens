cask "focuslens" do
  version "1.8.3"
  sha256 "2b12c1166a6aa7acecee0caf92865ececef82ffe65a6317a98a6694fb6ca8a6f"

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
