
Pod::Spec.new do |s|
    s.name         = 'SGImagePositionButton'
    s.version      = '0.0.1'
    s.summary      = 'A category about UIButton‘s imageView and titleLabel layout adjustments'
    s.homepage     = 'https://github.com/kingsic/SGImagePositionButton'
    s.license      = 'MIT'
    s.authors      = {'kingsic' => 'kingsic@126.com'}
    s.platform     = :ios, '6.0'
    s.source       = {:git => 'https://github.com/kingsic/SGImagePositionButton.git', :tag => s.version}
    s.source_files = 'SGImagePositionButton/**/*.{h,m}'
    s.requires_arc = true
end
