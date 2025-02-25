require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name           = 'RNPdfScanner'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = 'https://github.com/fesoares/react-native-document-scanner'
  s.source         = { :git => 'https://github.com/fesoares/react-native-document-scanner.git', :tag => s.version }

  s.requires_arc   = true
  s.platform       = :ios, '8.0'

  s.preserve_paths = 'README.md', 'package.json', 'index.js'
  s.source_files   = '*.{h,m}'

  s.dependency 'React'
end
