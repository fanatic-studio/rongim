

Pod::Spec.new do |s|



  s.name         = "ecoRongim"
  s.version      = "1.0.0"
  s.summary      = "eco plugin."
  s.description  = <<-DESC
                    eco plugin.
                   DESC

  s.homepage     = "https://eco.app"
  s.license      = "MIT"
  s.author             = { "ViewDesign" => "viewdesign@gmail.com" }
  s.source =  { :path => '.' }
  s.source_files  = "ecoRongim", "**/**/*.{h,m,mm,c}"
  s.exclude_files = "Source/Exclude"
  s.resources = 'ecoRongim/Source/*.*'
  s.vendored_libraries = 'ecoRongim/Utility/Rong_Cloud_iOS_IMLib_SDK_v2_10_2_Dev/IMLib/*.a'
  s.vendored_frameworks = 'ecoRongim/Utility/Rong_Cloud_iOS_IMLib_SDK_v2_10_2_Dev/IMLib/*.framework'
  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.dependency 'WeexSDK'
  s.dependency 'eco'
  s.dependency 'WeexPluginLoader', '~> 0.0.1.9.1'

end
