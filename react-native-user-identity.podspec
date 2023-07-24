require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
    s.name          = "react-native-user-identity"
    s.version       = package['version']
    s.summary       = package['description']
    s.license       = package['license']

    s.author        = package['author']
    s.homepage      = package['homepage']
    s.platform      = :ios, "9.0"

    s.source        = { :git => "https://github.com/juliandramirez/react-native-user-identity.git", :tag => "master" }
    s.source_files  = "ios/**/*.swift"
    s.swift_version = '4.2'
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    
    s.dependency "React"
end