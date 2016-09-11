

Pod::Spec.new do |s|


  s.name         = "NetworkKitHelper"
  s.version      = "0.0.2"
  s.summary      = "A wrapper for request network in iOS development. Support successBlock and failureBlock"


  s.homepage     = "https://github.com/tin612/NetworkHelperKit"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


 
  s.author             = { "Phan Thanh Tin" => "phantin612@gmail.com" }
  s.social_media_url   = "https://www.facebook.com/thanh.tin612"

 
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/tin612/NetworkHelperKit.git", :tag => "#{s.version}" }


  s.source_files  = "Classes", "NetworkHelperKit/*.{h,m,swift}"
  s.exclude_files = "Classes/Exclude"
  s.dependency "Alamofire"
  s.dependency "Gloss"
end
