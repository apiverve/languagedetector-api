Pod::Spec.new do |s|
  s.name             = 'APIVerveLanguageDetector'
  s.version          = '1.2.3'
  s.summary          = 'Language Detector is a language detection API that identifies the language of any submitted text string.'
  s.description      = <<-'DESC'
Language Detector is a language detection API that identifies the language of any submitted text string. It returns the primary language, its ISO 639-1 code, and candidate matches ranked by confidence scores.

This iOS/macOS SDK provides a convenient way to access the Language Detector from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/languagedetector?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/languagedetector-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveLanguageDetector/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
