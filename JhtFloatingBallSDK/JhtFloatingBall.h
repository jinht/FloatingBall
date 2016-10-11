//
//  JhtFloatingBall.h
//  JhtFloatingBall
//
//  GitHub主页: https://github.com/jinht
//  CSDN博客: http://blog.csdn.net/anticipate91
//
//  Created by Jht on 16/10/10.
//  Copyright © 2016年 靳海涛. All rights reserved.
//

#import <UIKit/UIKit.h>

// 停留方式
typedef NS_ENUM(NSInteger, StayMode) {
    // 四周均可停靠
    stayMode_Around = 0,
    // 只能停靠左右两侧
    stayMode_OnlyLeftAndRight = 1
};

/** 可以拖动的ImageView */
@interface JhtFloatingBall : UIImageView

/** 悬浮球停留的方式(默认为StayMode_Around) */
@property (nonatomic, assign) StayMode stayMode;
/** 悬浮球停留时的透明度（stayAlpha >= 0，1：不透明，默认为不透明） */
@property (nonatomic, assign) CGFloat stayAlpha;


@end
