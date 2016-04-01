//
//  ResultController.m
//  WBScanCode
//
//  Created by 李伟宾 on 16/3/29.
//  Copyright © 2016年 dylan_lwb. All rights reserved.
//

#import "ResultController.h"

@interface ResultController ()
{

    UIWebView *_resultWebView;
}
@end

@implementation ResultController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _resultWebView = [[UIWebView alloc] initWithFrame:self.view.frame];
    [_resultWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.resultUrlString]]];
    _resultWebView.scrollView.bounces = NO;
    _resultWebView.scalesPageToFit = YES;
    [self.view addSubview:_resultWebView];
}



@end
