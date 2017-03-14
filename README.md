# URLPreviewPod

[![Platform](https://img.shields.io/cocoapods/p/URLPreviewPod.svg?style=flat)](https://developer.apple.com/iphone/index.action)
[![Version](https://img.shields.io/cocoapods/v/URLPreviewPod.svg?style=flat)](http://cocoapods.org/pods/URLPreviewPod)
[![License](https://img.shields.io/cocoapods/l/URLPreviewPod.svg?style=flat)](http://cocoapods.org/pods/URLPreviewPod)

## Installation

URLPreviewPod is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "URLPreviewPod"
```

### 安裝 :
1.Linked Framworks and Libraries -> 新增本Framework、libxml2.dylib

2.Build Phases -> Copy Boundle Resources -> 新增本Framework

***
### Install :
1.Linked Framworks and Libraries -> Add this Framework and libxml2.dylib

2.Build Phases -> Copy Boundle Resources -> Add this Framework

## Use
### 使用 :
1.請先用initWithFrame初始化物件(最低尺寸 -> 寬：>=300，高：>=100)

2.如果需要點擊後導到該網站，請設定delegate，並實作URLPreviewDelegate的方法

3.使用saveTemporaryImage判斷是否暫存圖片

4.用showURLPreviewWithURL放入您的網址

***
### Use :
1.First use initWithFrame init you'r object(Minimum size -> Width：>=300，Height：>=100)

2.If you need to push to you'r URL, set URLPreviewDelegate

3.Use saveTemporaryImage to save Image

4.Use function showURLPreviewWithURL to set you'r URL

## Special Thanks
- [Objective-C-HMTL-Parser](https://github.com/zootreeves/Objective-C-HMTL-Parser) is a great HTML parser for Objective-c. (Created by [@zootreeves](https://github.com/zootreeves))

## Author

Stewart, rulerxiii@gmail.com

## License

URLPreviewPod is available under the MIT license. See the LICENSE file for more info.
