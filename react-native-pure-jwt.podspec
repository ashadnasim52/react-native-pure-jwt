require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = package['name']
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.source         = { git: 'https://github.com/zaguini/react-native-pure-jwt', tag: s.version }

  s.requires_arc   = true
  s.platform       = :ios, '8.0'
  s.preserve_paths = 'LICENSE', 'README.md', 'package.json', 'index.js'
  s.source_files   = 'ios/**/*.{h,m,swift}'

  s.dependency 'React/Core'
  s.dependency 'JSONWebToken'
end