# Swiiift

[![CI Status](http://img.shields.io/travis/mejackreed/Swiiift.svg?style=flat)](https://travis-ci.org/mejackreed/Swiiift)
[![Version](https://img.shields.io/cocoapods/v/Swiiift.svg?style=flat)](http://cocoapods.org/pods/Swiiift)
[![License](https://img.shields.io/cocoapods/l/Swiiift.svg?style=flat)](http://cocoapods.org/pods/Swiiift)
[![Platform](https://img.shields.io/cocoapods/p/Swiiift.svg?style=flat)](http://cocoapods.org/pods/Swiiift)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage

```swift
let manifest = Manifest(fromUrl: "https://purl.stanford.edu/sn904cj3429/iiif/manifest", completion: { manifest in
    print(manifest!.label)
    // Other properties are now available on the manifest
})
// Peter's San Francisco Locator. The Birds-Eye-View Map of the Exposition City. Published by Locator Publishing Co
```


## Installation

Swiiift is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Swiiift'
```

## Author

Jack Reed, phillipjreed@gmail.com

## License

Swiiift is available under the MIT license. See the LICENSE file for more info.
