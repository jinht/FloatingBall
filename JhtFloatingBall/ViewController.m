//
//  ViewController.m
//  JhtFloatingBall
//
//  GitHub主页: https://github.com/jinht
//  CSDN博客: http://blog.csdn.net/anticipate91
//
//  Created by Jht on 2016/10/10.
//  Copyright © 2016年 Jht. All rights reserved.
//

#import "ViewController.h"
#import "JhtFloatingBall.h"

@interface ViewController () <UIGestureRecognizerDelegate>

@end


/** 颜色转换  例：#000000 UIColorFromRGB(0x000000) */
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置背景颜色
    self.view.backgroundColor = UIColorFromRGB(0xCCBBAA);
    
    self.navigationController.navigationBar.translucent = NO;
    self.navigationItem.title = @"JhtFloatingBall";
    
    // 添加dragImageView
    [self addFolatingball];
}



#pragma mark - 添加addFolatingball
/** 添加addFolatingball */
- (void)addFolatingball {
    UIImage *suspendedBallImage = [UIImage imageNamed:@"SuspendedBall"];
    JhtFloatingBall *fb = [[JhtFloatingBall alloc] initWithFrame:CGRectMake(0, 20, suspendedBallImage.size.width * 0.65, suspendedBallImage.size.height * 0.65)];
    fb.image = suspendedBallImage;
//    fb.stayAlpha = 0.7;
//    fb.stayMode = stayMode_OnlyLeftAndRight;
    [self.view addSubview:fb];
    
    // 添加点击手势
    UITapGestureRecognizer *fbGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(fbTap:)];
    fbGesture.delegate = self;
    [fb addGestureRecognizer:fbGesture];
}

/** fb点击 事件 */
- (void)fbTap:(UITapGestureRecognizer *)ges {
    NSLog(@"fb 被点击了哈，爱管不管！！！");
}


 


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
