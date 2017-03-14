### 安裝 :
1.Linked Framworks and Libraries -> 新增本Framework、libxml2.dylib

2.Build Phases -> Copy Boundle Resources -> 新增本Framework

### 使用 :
1.請先用initWithFrame初始化物件(最低尺寸 -> 寬：>=300，高：>=100)

2.如果需要點擊後導到該網站，請設定delegate，並實作URLPreviewDelegate的方法

3.使用titleColorHexString                 //預設(#000000)
     descriptionColorHexString           //預設(#878787)
     siteNameColorHexString              //預設(#878787)
     設定顏色

4.使用saveTemporaryImage判斷是否暫存圖片

5.用showURLPreviewWithURL放入您的網址

///////////////////////////////////////////////////////////////////

### Install :
1.Linked Framworks and Libraries -> Add this Framework and libxml2.dylib

2.Build Phases -> Copy Boundle Resources -> Add this Framework

### Use :
1.First use initWithFrame init you'r object(Minimum size -> Width：>=300，Height：>=100)

2.If you need to push to you'r URL, set URLPreviewDelegate

3.Use titleColorHexString               //default(#000000)
      descriptionColorHexString         //default(#878787)
      siteNameColorHexString            //default(#878787)
      to set label color.

4.Use saveTemporaryImage to save Image

5.Use function showURLPreviewWithURL to set you'r URL






