

Pod::Spec.new do |s|

  s.name         = "VK_Utils"
  s.version      = "1.0.3"
  s.summary      = "iOS常用工具库"
  s.homepage     = "https://github.com/Vickeywei/VK_Utils"
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
    © 2016-2016 Vicky. All rights reserved.
    LICENSE
   }
  s.authors      = { 'Vickeywei' => 'weiqi@hzdracom.com' }
  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"



  s.source       = { :git => "https://github.com/Vickeywei/VK_Utils.git", :tag => "1.0.3" }

  s.source_files  = "VK_Utils", "VK_Utils/Utils/**/*.{h,m}"

  s.requires_arc = true

  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  s.dependency "JSONKit-NoWarning", "~> 1.2"
  s.dependency "JLRoutes"
  s.dependency "SSKeychain", "~> 1.4.1"

end
