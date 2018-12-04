//
//  JhtFloatingBall_Define.h
//  JhtFloatingBall
//
//  Created by Jht on 2018/5/22.
//  Copyright © 2018年 JhtFloatingBall. All rights reserved.
//

#ifndef JhtFloatingBall_Define_h
#define JhtFloatingBall_Define_h


/** 停靠方式 */
typedef NS_ENUM(NSInteger, Jht_StayMode) {
    // 四周停靠（优先考虑左右两侧，具体处理逻辑同AssistiveTouch）
    StayMode_Around = 0,
    // 左侧停靠
    StayMode_OnlyLeft,
    // 右侧停靠
    StayMode_OnlyRight,
};


#endif /* JhtFloatingBall_Define_h */
