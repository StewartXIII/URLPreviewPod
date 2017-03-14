//
//  Preview.h
//  Preview
//
//  Created by Stewart on 2017/2/18.
//  Copyright © 2017年 Stewart. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol URLPreviewDelegate <NSObject>
@optional
- (void)URLPreviewPressWithURL:(NSString *)url;
@end

@interface Preview : UIView

@property (nonatomic, weak) id<URLPreviewDelegate> delegate;
/*
// 標題的顏色
// title Color With HexString
*/
@property (nonatomic, weak) NSString *titleColorHexString;

/*
// 描述的顏色
// description Color With HexString
*/
@property (nonatomic, weak) NSString *descriptionColorHexString;

/*
// 位置名稱的顏色
// siteName Color With HexString
*/
@property (nonatomic, weak) NSString *siteNameColorHexString;

/*
// 是否存儲預覽圖片
// did save Image Preview
*/
@property (nonatomic, assign) BOOL saveTemporaryImage;

#pragma mark - Func
/*
// 設定要預覽的網址
// set what URL you whant Preview
*/
- (void)showURLPreviewWithURL:(NSString *)URLString;

/*
// 刪除儲存的預覽圖片
// to clear Temporary Image
*/
- (void)claerPreviewTemporaryImage;


@end
