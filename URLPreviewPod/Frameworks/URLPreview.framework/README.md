# 安裝 :

1.Linked Framworks and Libraries -> 新增本Framework、libxml2.(dylib/tbd)

2.Build Settings -> Header Search Paths -> 新增 /usr/include/libxml2

3.Build Phases -> Copy Boundle Resources -> 新增本Framework

# Install :

1.Linked Framworks and Libraries -> Add this Framework and libxml2.(dylib/tbd)

2.Build Settings -> Header Search Paths -> Add /usr/include/libxml2

3.Build Phases -> Copy Boundle Resources -> Add this Framework

***

# 使用 :

1.請先用initWithFrame初始化物件(最低尺寸 -> 寬：>=300，高：>=100)

2.如果需要點擊後導到該網站，請設定delegate，並實作URLPreviewDelegate的方法

3.使用saveTemporaryImage判斷是否暫存圖片

4.用showURLPreviewWithURL放入您的網址

# Use :

1.First use initWithFrame init you'r object(Minimum size -> Width：>=300，Height：>=100)

2.If you need to push to you'r URL, set URLPreviewDelegate

3.Use saveTemporaryImage to save Image

4.Use function showURLPreviewWithURL to set you'r URL

## Code
```objective-c
#import <URLPreview/Preview.h>

Preview *preview = [[Preview alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 100)];
preview.center = self.view.center;
preview.delegate = self;
[preview showURLPreviewWithURL:@"https://github.com/StewartXIII/URLPreview"];
```

## Change Color
```objective-c
preview.titleColorHexString = @"#fe5b18";
preview.descriptionColorHexString = @"#7c6262";
preview.siteNameColorHexString = @"#2918df";
preview.longPressColorHexString = @"#f38181";
```

## Use 3D Touch
```objective-c
[preview use3DTouchOnController:self];
```
