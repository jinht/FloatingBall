//
//  ViewController.m
//  JhtFloatingBall
//
//  GitHub主页: https://github.com/jinht
//  CSDN博客: http://blog.csdn.net/anticipate91
//
//  Created by Jht on 2016/10/10.
//  Copyright © 2016年 JhtFloatingBall. All rights reserved.
//

#import "ViewController.h"
#import "JhtFloatingBall.h"

/** 屏幕 宽度 */
#define FrameW [UIScreen mainScreen].bounds.size.width

@interface ViewController () <JhtFloatingBallDelegate>

/** folatingball */
@property (nonatomic, strong) JhtFloatingBall *folatingball;

@end


/** 颜色转换  例：#000000 UIColorFromRGB(0x000000) */
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // CreateUI
    [self createUI];
}



#pragma mark - UI
/** CreateUI */
- (void)createUI {
    self.view.backgroundColor = UIColorFromRGB(0xCCBBAA);
    
    self.navigationController.navigationBar.translucent = NO;
    self.title = @"JhtFloatingBall";
    
    // 添加folatingball
    [self.view addSubview:self.folatingball];
}



#pragma mark - Get
/** folatingball */
- (JhtFloatingBall *)folatingball {
    if (!_folatingball) {
        UIImage *suspendedBallImage = [UIImage imageNamed:@"SuspendedBall"];
        _folatingball = [[JhtFloatingBall alloc] initWithFrame:CGRectMake(0, 20, suspendedBallImage.size.width * 0.65, suspendedBallImage.size.height * 0.65)];
        
        _folatingball.image = suspendedBallImage;
        _folatingball.stayAlpha = 0.6;
        _folatingball.delegate = self;
        // 左右两侧停靠
//        _folatingball.stayMode = (StayMode_OnlyLeft | StayMode_OnlyRight);
    }
    
    return _folatingball;
}



#pragma mark - JhtFloatingBallDelegate
/** folatingball点击 事件 */
- (void)tapFloatingBall {
    NSLog(@"folatingball 被点击了哈，爱管不管！！！");
}


 


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
