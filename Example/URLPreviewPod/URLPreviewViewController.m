//
//  URLPreviewViewController.m
//  URLPreviewPod
//
//  Created by Stewart on 03/13/2017.
//  Copyright (c) 2017 Stewart. All rights reserved.
//

#import "URLPreviewViewController.h"
#import <URLPreview/Preview.h>

@import SafariServices;

@interface URLPreviewViewController () <URLPreviewDelegate,SFSafariViewControllerDelegate>

@end

@implementation URLPreviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setURLPreview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Set URLPreview
- (void)setURLPreview {
    Preview *preview = [[Preview alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 100)];
    preview.center = self.view.center;
    preview.delegate = self;
//    如果需要更換顏色
//    preview.titleColorHexString = @"#fe5b18";
//    preview.descriptionColorHexString = @"#7c6262";
//    preview.siteNameColorHexString = @"#2918df";
    [self.view addSubview:preview];
    [preview showURLPreviewWithURL:@"https://github.com/StewartXIII/URLPreview"];
}

#pragma mark - Set URLPreviewDelegate
- (void)URLPreviewPressWithURL:(NSString *)url {
    NSURL *webURL = [NSURL URLWithString:url];
    if (webURL) {
        SFSafariViewController *safariVC = [[SFSafariViewController alloc] initWithURL:webURL];
        safariVC.delegate = self;
        [self presentViewController:safariVC animated:YES completion:nil];
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"Not effective URL" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
}

#pragma mark - SFSafariViewControllerDelegate
- (void)safariViewControllerDidFinish:(SFSafariViewController *)controller {
    [controller dismissViewControllerAnimated:YES completion:nil];
}

@end
