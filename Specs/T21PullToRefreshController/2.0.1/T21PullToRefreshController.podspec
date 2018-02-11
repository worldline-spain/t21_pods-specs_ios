Pod::Spec.new do |s|
  s.name         = 'T21PullToRefreshController'
  s.version      = '2.0.1'
  s.summary      = 'T21PullToRefreshController is a singleton with methods in order to add pull to refresh into any UIScrollView subclass.'
  s.author =
  {
    'David Arrufat Villalbos' => ''
  }
  s.platform = :ios
  s.source  = {
    :git => "https://github.com/worldline-spain/t21_pull-to-refresh-controller_ios.git", :tag => "2.0.1"
  }

  s.source_files = 'src/T21PullToRefreshController/**/*.{h,m}'
  s.requires_arc = true
  s.ios.deployment_target = '8.0'
end
