
Pod::Spec.new do |spec|
  spec.name               = 'IdentityProofingSDKPlus'
  spec.version            = '1.0.61'
  spec.homepage           = "https://www.tietoevry.com/"
  spec.license            = 'License.txt'
  spec.authors            = { 'Alexander Kvamme' => 'alexanderkvamme@tietoevry.com' }
  spec.summary            = 'IdentityProofingSDK with additional layout components'
  spec.platform           = :ios, '13.0'
  spec.framework          = 'UIKit'

  # For .xcframework after release
  # spec.source             = { :http => 'file:' + __dir__ + '/IdentityProofingSDKPlus.xcframework.zip', :type => "zip" }
  # spec.vendored_framework = 'IdentityProofingSDKPlus.xcframework'

  # For .framework during development
  spec.source              = { :http => 'file:' + __dir__ + '/IdentityProofingSDKPlus.framework.zip', :type => "zip" }
  spec.vendored_frameworks = 'IdentityProofingSDKPlus.framework'

  # Cocoapods dependencies
  spec.dependency 'MobaiBiometric', '2.0.0-beta.5'
  spec.dependency 'PPBlinkID', '6.1.2'
  spec.dependency 'SnapKit', '5.0.0'
  spec.dependency 'lottie-ios', '4.0.0'
  spec.dependency 'SwiftProtobuf', '1.20.2'
  spec.dependency 'SwiftGen', '~> 6.0'
  spec.dependency 'JOSESwift', '~> 2.3'

  # Temporarily exclude arm64 simulator architectures
  # Add these in later to make sim work on M1/M2 computers
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end

