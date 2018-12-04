Pod::Spec.new do |s|
    
    s.name                       = 'JhtFloatingBall'
    s.version                    = '1.0.0'
    s.summary                    = '悬浮球/悬浮按钮/辅助按钮'
    s.homepage                   = 'https://github.com/jinht/FloatingBall'
    s.license                    = { :type => 'MIT', :file => 'LICENSE' }
    s.author                     = { 'Jinht' => 'jinjob@icloud.com' }
    s.social_media_url           = 'https://blog.csdn.net/Anticipate91'
    s.platform                   = :ios
    s.ios.deployment_target      = '8.0'
    s.source                     = { :git => 'https://github.com/jinht/FloatingBall.git', :tag => s.version }
    s.ios.vendored_frameworks    = 'JhtFloatingBall.framework'
    s.frameworks                 = 'UIKit'

end
