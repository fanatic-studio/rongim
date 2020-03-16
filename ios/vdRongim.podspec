

Pod::Spec.new do |s|



  s.name         = "vdRongim"
  s.version      = "1.0.0"
  s.summary      = "vd plugin."
  s.description  = <<-DESC
                    vd plugin.
                   DESC

  s.homepage     = "https://vd.app"
  s.license      = "MIT"
  s.author             = { "ViewDesign" => "viewdesign@gmail.com" }
  s.source =  { :path => '.' }
  s.source_files  = "vdRongim", "**/**/*.{h,m,mm,c}"
  s.exclude_files = "Source/Exclude"
  s.resources = 'vdRongim/Source/*.*'
  s.vendored_libraries = 'vdRongim/Utility/Rong_Cloud_iOS_IMLib_SDK_v2_10_2_Dev/IMLib/*.a'
  s.vendored_frameworks = 'vdRongim/Utility/Rong_Cloud_iOS_IMLib_SDK_v2_10_2_Dev/IMLib/*.framework'
  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.dependency 'WeexSDK'
  s.dependency 'vd'
  s.dependency 'WeexPluginLoader', '~> 0.0.1.9.1'

end
