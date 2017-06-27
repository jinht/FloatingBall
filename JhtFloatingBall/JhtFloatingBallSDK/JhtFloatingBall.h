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
typedef NS_ENUM(NSInteger, Jht_StayMode) {
    // 四周均可停靠（优先考虑左右两侧，具体处理逻辑同AssistiveTouch）
    stayMode_Around = 0,
    // 只能停靠左右两侧
    stayMode_OnlyLeftAndRight = 1
};


#pragma mark - protocol
@protocol JhtFloatingBallDelegate <NSObject>
/** 点击悬浮球 */
- (void)tapFloatingBall;

@end


/** 可以拖动的ImageView */
@interface JhtFloatingBall : UIImageView
#pragma mark - property
#pragma mark optional
/** 悬浮球停留的方式
 *  default：StayMode_Around（优先考虑左右两侧，具体处理逻辑同AssistiveTouch）
 */
@property (nonatomic, assign) Jht_StayMode stayMode;

/** 是否需要延迟改变alpha（效果类似不AssistiveTouch）
 *	default：YES
 */
@property (nonatomic, assign) BOOL shouldDelayChangeAlpha;
/** 悬浮球停留时的透明度（stayAlpha >= 0，1：不透明）
 *  default：不透明
 */
@property (nonatomic, assign) CGFloat stayAlpha;

/** 委托 */
@property (nonatomic, weak) id<JhtFloatingBallDelegate> delegate;


@end
