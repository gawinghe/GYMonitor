 Pod::Spec.new do |s|
   s.name         = "GYMonitor"
   s.version      = "1.0.0"
   s.summary      = "A collection of code for profiling iOS app, such as monitoring FPS."
   s.homepage     = "https://github.com/featuretower/GYMonitor"
   s.license      = 'MIT (LICENSE)'
   s.author       = { "featuretower" => "featuretower@qq.com" }
   s.source       = { :git => "https://github.com/featuretower/GYMonitor.git", :tag => s.version }
   s.platform     = :ios, '7.0'

   s.source_files = 'GYMonitor', 'GYMonitor/**/*.{h,m}'
   s.exclude_files = 'GYMonitor/CrashReporter.framework'

   s.dependency 'PLCrashReporter'

   s.requires_arc = true
  
   s.xcconfig = { 
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) GYMonitor=1'
    }
 end
