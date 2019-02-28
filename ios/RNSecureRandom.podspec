require "json"

package = JSON.parse(File.read(File.join(__dir__, "/../package.json")))

Pod::Spec.new do |s|
  s.name         = "RNSecureRandom"
  s.version      = package["version"]
  s.summary      = "RNSecureRandom"
  s.description  = package["description"]
  s.homepage     = package["homepage"]
  s.license      = "MIT"
  s.author       = { "Arweave Team" => "team@arweave.org" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => package["repository"]["url"], :tag => "master" }
  s.source_files  = "ios/**/*.{h,m}"
  s.requires_arc = true
  s.dependency "React"
end

