#
# ResponseDetective.podspec
#
# Copyright © 2017-2020 Netguru S.A. All rights reserved.
# Licensed under the MIT License.
#

Pod::Spec.new do |spec|

  # Description

  spec.name = 'ResponseDetective'
  spec.version = '1.5.0'
  spec.summary = 'Sherlock Holmes of the networking layer'
  spec.homepage = 'https://github.com/netguru/ResponseDetective'

  # License

  spec.license = {
    type: 'MIT',
    file: 'LICENSE.md'
  }

  spec.authors = {
    'Adrian Kashivskyy' => 'adrian.kashivskyy@netguru.co',
    'Aleksander Popko' => 'aleksander.popko@netguru.co'
  }

  # Source

  spec.source = {
    git: 'https://github.com/netguru/ResponseDetective.git',
    tag: spec.version.to_s
  }

  spec.source_files = 'ResponseDetective/Sources'
  spec.module_map = 'ResponseDetective/Resources/Framework.modulemap'

  # Linking

  spec.frameworks = 'Foundation'
  spec.libraries = 'xml2'

  spec.ios.frameworks = 'UIKit'
  spec.osx.frameworks = 'AppKit'

  # Settings

  spec.swift_version = '5.2'

  spec.requires_arc = true

  spec.ios.deployment_target = '8.0'
  spec.osx.deployment_target = '10.10'
  spec.tvos.deployment_target = '9.0'

  spec.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2'
  }

end
