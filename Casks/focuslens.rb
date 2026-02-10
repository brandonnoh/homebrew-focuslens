cask "focuslens" do                                                                                                                                                                  
    version "1.0.0"                                                                                                                                                                    
    sha256 "릴리스_후_업데이트_예정"                                                                                                                                                   
                                                                                                                                                                                       
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
