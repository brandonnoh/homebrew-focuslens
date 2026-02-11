cask "focuslens" do
  version "1.3.1"
  sha256 "39d4fa010ca71f1409533906cfb697b74fc6d94efffa4628314127269323776c"

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
