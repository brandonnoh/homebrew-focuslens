cask "focuslens" do
  version "1.2.1"
  sha256 "bedd26a7ef34c7be016cc60fb884e8d8ee74364f29b2ffd1fde4c331e50c3d0c"

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
