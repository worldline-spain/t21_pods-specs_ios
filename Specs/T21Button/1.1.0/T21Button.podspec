
Pod::Spec.new do |s|

  s.name         = "T21Button"
  s.version      = "1.1.0"
  s.summary      = ""
  s.author    = "Eloi Guzman Ceron"
  s.platform     = :ios
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/worldline-spain/T21Button-iOS.git", :tag => "1.1.0" }
  s.source_files  = "Classes", "src/**/*.{swift}"
  s.framework  = "UIKit"
  s.requires_arc = true

end
