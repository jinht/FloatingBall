//
//  JhtFloatingBall.h
//  JhtFloatingBall
//
//  GitHub主页: https://github.com/jinht
//  CSDN博客: http://blog.csdn.net/anticipate91
//
//  Created by Jht on 16/10/10.
//  Copyright © 2016年 JhtFloatingBall. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JhtFloatingBall_Define.h"
#import "JhtFloatingBallDelegate.h"

/** JhtFloatingBall */
@interface JhtFloatingBall : UIImageView
#pragma mark - property
#pragma mark optional
/** 悬浮球停靠方式
 *  default: StayMode_Around（优先考虑左右两侧，具体处理逻辑同AssistiveTouch）
 *	请注意 起始点 与 停靠方式 的一致性
 */
@property (nonatomic, assign) Jht_StayMode stayMode;

/** 是否需要 停靠后 延迟改变alpha（效果类似于AssistiveTouch）
 *	default: YES
 */
@property (nonatomic, assign) BOOL shouldDelayChangeAlpha;
/** 悬浮球停留时 透明度（stayAlpha >= 0，1: 不透明）
 *  default: 不透明
 */
@property (nonatomic, assign) CGFloat stayAlpha;

@property (nonatomic, weak) id<JhtFloatingBallDelegate> delegate;

/** 拖动 Block */
typedef void(^fbTouchesMovedBlock)(CGRect frame);
@property (nonatomic, copy) fbTouchesMovedBlock touchesMovedBlock;
/** 停留 Block */
typedef void(^fbStayBlock)(CGRect frame);
@property (nonatomic, copy) fbStayBlock stayBlock;


@end
