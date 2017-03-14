//
//  UIImageView+LoadURLImage.h
//  URLPreview
//
//  Created by Stewart on 2017/3/9.
//  Copyright © 2017年 Stewart. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ _Nonnull downloadImageBlock)(UIImage * _Nullable image, NSError * _Nullable error, NSURL * _Nullable imageURL);

@interface UIImageView (LoadURLImage)

// 擴充ImageView DownloadURL的方法
-(void)downloadImageWithUrl:(NSURL * _Nonnull)imageURL DefaultImage:(UIImage * _Nullable)defaultImage URLReturn:(downloadImageBlock _Nonnull)URLReturn;

@end
