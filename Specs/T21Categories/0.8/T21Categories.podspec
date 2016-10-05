Pod::Spec.new do |s|
    s.name         = 'T21Categories'
    s.version      = '0.8'
    s.summary      = 'Categories collection with the common tools for reuse.'
    s.author =
    {
        'David Arrufat Villalbos' => ''
    }
    s.platform = :ios
    s.source  = {
        :git => "https://github.com/worldline-spain/t21_categories_ios.git", :tag => "0.8"
    }
    
    #NSBundle categories

    s.subspec 'NSBundle' do |bundle|

        bundle.subspec 'CommonUtils' do |common|
            common.source_files = 'src/nsbundle/t21_common_utils/**/*.{h,m}'
        end

    end

    #NSDate categories

    s.subspec 'NSDate' do |date|
    
        date.subspec 'StringUtils' do |string|
            string.source_files = 'src/nsdate/t21_string_utils/**/*.{h,m}'
            string.dependency 'T21Categories/NSDateFormatter/CommonUtils'
        end

    end

    #NSDateFormatter categories

    s.subspec 'NSDateFormatter' do |dformatter|

        dformatter.subspec 'CommonUtils' do |common|
            common.source_files = 'src/nsdateformatter/t21_common_utils/**/*.{h,m}'
        end

    end

    #NSString categories

    s.subspec 'NSString' do |string|

        string.subspec 'CommonCryptoUtils' do |ccrypto|
            ccrypto.source_files = 'src/nsstring/t21_common-crypto_utils/**/*.{h,m}'
            ccrypto.dependency 'CommonCrypto','~>1.1'
        end

    end
    
    #NSURL categories

    s.subspec 'NSURL' do |url|
    
        url.subspec 'CommonUtils' do |common|
            common.source_files = 'src/nsurl/t21_common_utils/**/*.{h,m}'
        end

    end

    #UIApplication categories

    s.subspec 'UIApplication' do |app|

        app.subspec 'CommonUtils' do |common|
            common.source_files = 'src/uiapplication/t21_common_utils/**/*.{h,m}'
        end

        app.subspec 'StatusBarUtils' do |sbar|
            sbar.source_files = 'src/uiapplication/t21_status-bar_utils/**/*.{h,m}'
            sbar.dependency 'T21Categories/UIDevice/CommonUtils'
        end
    end

    #UIBarButtonItem categories

    s.subspec 'UIBarButtonItem' do |bitem|

        bitem.subspec 'CommonUtils' do |common|
            common.source_files = 'src/uibarbuttonitem/t21_common_utils/**/*.{h,m}'
        end

    end

    #UIColor categories

    s.subspec 'UIColor' do |color|

        color.subspec 'CommonUtils' do |common|
            common.source_files = 'src/uicolor/t21_common_utils/**/*.{h,m}'
        end

        color.subspec 'HexStringUtils' do |hex|
            hex.source_files = 'src/uicolor/t21_hex-string_utils/**/*.{h,m}'
        end
    end
    
    #UIDevice categories

    s.subspec 'UIDevice' do |device|
    
        device.subspec 'CommonUtils' do |common|
            common.source_files = 'src/uidevice/t21_common_utils/**/*.{h,m}'
        end

    end

    #UIImage categories

    s.subspec 'UIImage' do |image|
    
        image.subspec 'FlipUtils' do |flip|
            flip.source_files = 'src/uiimage/t21_flip_utils/**/*.{h,m}'
        end

    end

    #UIScreen categories

    s.subspec 'UIScreen' do |screen|
    
        screen.subspec 'CommonUtils' do |common|
            common.source_files = 'src/uiscreen/t21_common_utils/**/*.{h,m}'
            common.dependency 'T21Categories/UIDevice/CommonUtils'
        end

    end

    #UIView categories

    s.subspec 'UIView' do |view|
    
        view.subspec 'ConstraintUtils' do |constraint|
            constraint.source_files = 'src/uiview/t21_constraint_utils/**/*.{h,m}'
        end

    end

    #UIViewController categories

    s.subspec 'UIViewController' do |vc|
    
        vc.subspec 'NavigationBarUtils' do |nbar|
            nbar.source_files = 'src/uiviewcontroller/t21_navigation-bar_utils/**/*.{h,m}'
            nbar.dependency 'T21Categories/UIBarButtonItem/CommonUtils'
        end

    end

    s.requires_arc = true
    s.ios.deployment_target = '8.0'

end