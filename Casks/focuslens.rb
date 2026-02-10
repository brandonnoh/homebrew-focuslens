cask "focuslens" do                                                                                                                                                                  
    version "1.0.0"                                                                                                                                                                    
    sha256 "f2711166a0ee96aaea3e1898ec7bfeb4d26279473f6e64bab2e1ac668f8d071d"                                                                                                                                                   
                                                                                                                                                                                       
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
