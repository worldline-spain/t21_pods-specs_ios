Pod::Spec.new do |s|
        s.name         = 'T21UIViewFromXIB'
        s.version      = '0.2.1'
        s.summary      = 'Create UIViews from Xib files'
        s.author =
    {
        'Eloi Guzman Ceron' => 'eloi.guzman@worldline.com'
    }

    s.source  = {
        :git => "https://github.com/worldline-spain/t21_uiview-from-xib_ios.git", :tag => "0.2.1"
    }

    s.source_files = "src/**/*.{h,m}"
    s.requires_arc = true
    s.ios.deployment_target = '8.0'
    
    end
