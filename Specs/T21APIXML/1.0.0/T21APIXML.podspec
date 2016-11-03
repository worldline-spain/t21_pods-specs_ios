Pod::Spec.new do |s|
    s.name         = 'T21APIXML'
    s.version      = '1.0.0'
    s.summary      = 'T21APIXML is a helper pod library to load an API definition from an XML file, and then, creating NSMutableURLRequests from it.'
    s.author =
    {
        'Eloi Guzmán Cerón' => ''
    }
    s.platform = :ios
    s.source  = {
        :git => "https://github.com/worldline-spain/t21_xml-api_ios.git", :tag => "1.0.0"
    }

    s.dependency 'KissXML', '~> 5.0'
    s.source_files = "src/**/*.{h,m}", "lib/**/*.{h,m}"
    s.requires_arc = true
    s.ios.deployment_target = '8.0'
end
