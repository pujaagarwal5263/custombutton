
Pod::Spec.new do |spec|

  spec.name         = "CustomButton"
  spec.version      = "1.0.0"
  spec.summary      = "A short description of CustomButton."
  spec.description  = "A customize button"
  spec.homepage     = "https://git.geekyants.com/puja/custombutton"
  spec.license      = "MIT"
  spec.author             = { "Puja Agrawal" => "puja@geekyants.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://git.geekyants.com/puja/custombutton", :tag => spec.version.to_s }

  spec.source_files  = "CustomButton/**/*.{swift}"

end
