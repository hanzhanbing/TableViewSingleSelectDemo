Pod::Spec.new do |s|
  s.name         = "TableViewSingleSelectDemo"
  s.version      = "0.0.1"
  s.platform     = :ios, '7.0'
  s.summary      = "An example of TableView SingleSelect Function"
  s.homepage     = "https://github.com/hanzhanbing/TableViewSingleSelectDemo"
  s.license      = { :type => 'MIT',
                     :text =>  <<-LICENSE
                    Copyright 2014. Me.
                              LICENSE
                   }
  s.author             = { "hanzhanbing" => "1655661337@qq.com" }
  s.social_media_url   = "http://weibo.com/3879141691"
  s.source       = { :git => "https://github.com/hanzhanbing/TableViewSingleSelectDemo.git", :tag => s.version }
  s.source_files  = "TableViewSingleSelectDemo"
  s.framework = 'UIKit', 'Foundation'
  s.requires_arc = true
end
