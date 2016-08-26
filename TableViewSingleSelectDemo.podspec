Pod::Spec.new do |s|
  s.name         = "TableViewSingleSelectDemo"
  s.version      = "0.0.1"
  s.ios.deployment_target = '7.3.1'
  s.osx.deployment_target = '10.11.3'
  s.summary      = "An example of TableView SingleSelect Function"
  s.homepage     = "https://github.com/hanzhanbing/TableViewSingleSelectDemo"
  s.license      = "MIT"
  s.author             = { "hanzhanbing" => "1655661337@qq.com" }
  s.social_media_url   = "http://weibo.com/3879141691"
  s.source       = { :git => "https://github.com/hanzhanbing/TableViewSingleSelectDemo.git", :tag => s.version }
  s.source_files  = "TableViewSingleSelectDemo"
  s.requires_arc = true
end
