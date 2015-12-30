Pod::Spec.new do |s|
   s.name     = 'PEAR-ZoomingView-iOS'
   s.version  = '1.0.0'
   s.platform = :'ios', '8.0'
   s.license  = 'MIT'
   s.summary  = 'Full screen to display when touch the view.'
   s.homepage = 'https://github.com/HirokiUmatani/PEAR-ZoomingView-iOS'
   s.author   = { "HirokiUmatani" => "info@pear.chat" }
   s.source   = { :git => 'https://github.com/HirokiUmatani/PEAR-ZoomingView-iOS.git', :tag => s.version.to_s }
   s.source_files = 'PEAR-ZoomingView-iOS/*.{h,m}'
   s.requires_arc = true
end
