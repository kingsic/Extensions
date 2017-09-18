
Pod::Spec.new do |s|
    s.name         = 'SGEasyButton'
    s.version      = '0.0.1'
    s.summary      = 'A category about UIButton'
    s.homepage     = 'https://github.com/kingsic/SGEasyButton'
    s.license      = 'MIT'
    s.authors      = {'kingsic' => 'kingsic@126.com'}
    s.platform     = :ios, '7.0'
    s.source       = {:git => 'https://github.com/kingsic/SGEasyButton.git', :tag => s.version}
    s.source_files = 'SGEasyButton/**/*.{h,m}'
    s.requires_arc = true
end
