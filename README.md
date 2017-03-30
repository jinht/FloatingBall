## FloatingBall

### Function Description
#### 这是一个类似于iOS系统自带的AssistiveTouch/京东《我的》部分的悬浮按钮等类型的辅助按钮，具体处理逻辑同AssistiveTouch <br>
<img src="https://raw.githubusercontent.com/jinht/FloatingBall/master/ReadMEImages/JhtFloatingBall.gif" width=250 height=445 /> <br>
 
 
### How to use
#### 使用起来比较方便，只需导入 `JhtFloatingBall.h` 头文件即可  <br>
(1) 简单的初始化<br>
```oc
JhtFloatingBall *fb = [[JhtFloatingBall alloc] init];
UIImage *suspendedBallImage = [UIImage imageNamed:@"SuspendedBall"];
fb.frame = CGRectMake(0, 20, suspendedBallImage.size.width*0.65, suspendedBallImage.size.height*0.65);
fb.image = suspendedBallImage;
[self.view addSubview:fb];
```

(2) 设置悬浮球停留的方式 <br>
```oc
// 停留方式
typedef NS_ENUM(NSInteger, StayMode) {
    // 四周均可停靠（优先考虑左右两侧，具体处理逻辑同AssistiveTouch）
    stayMode_Around = 0,
    // 只能停靠左右两侧
    stayMode_OnlyLeftAndRight = 1
};
/** 悬浮球停留的方式
 *  default：StayMode_Around（优先考虑左右两侧，具体处理逻辑同AssistiveTouch）
 */
@property (nonatomic, assign) StayMode stayMode;
```

(3) 设置悬浮球停留时的透明度 <br>
```oc
/** 悬浮球停留时的透明度（stayAlpha >= 0，1：不透明）
 *  default：不透明
 */
@property (nonatomic, assign) CGFloat stayAlpha;
```

* 注：创建成功后，可以根据自己的需求添加相应的事件


### Remind
* ARC
* iOS >= 8.0
* iPhone \ iPad 

## Hope
* If you find bug when used，Hope you can Issues me，Thank you or try to download the latest code of this framework to see the BUG has been fixed or not
* If you find the function is not enough when used，Hope you can Issues me，I very much to add more useful function to this framework ，Thank you !
