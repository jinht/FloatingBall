## FloatingBall

### 一言不合就上图
<img src="https://raw.githubusercontent.com/jinht/FloatingBall/master/ReadMEImages/JhtFloatingBall.gif" width=250 height=445 /> <br>


### Function Description
 1. 轻量级UI控件
 2. 辅助按钮/悬浮球(AssistiveTouch)
 3. 支持两种停靠方式及相关自定义设置
 
 
### How to use
#### 1. 简单的初始化<br>
```oc
    UIImage *suspendedBallImage = [UIImage imageNamed:@"SuspendedBall"];
    JhtFloatingBall *fb = [[JhtFloatingBall alloc] initWithFrame:CGRectMake(0, 20, suspendedBallImage.size.width * 0.65, suspendedBallImage.size.height * 0.65)];
    fb.image = suspendedBallImage;
    [self.view addSubview:fb];
```

#### 2. 悬浮球停靠的方式 <br>
```oc
// 停留方式
typedef NS_ENUM(NSInteger, StayMode) {
    // 四周均可停靠
    StayMode_Around = 0,
    // 只能停靠左右两侧
    StayMode_OnlyLeftAndRight = 1
};
/** 悬浮球停留的方式(默认为StayMode_Around) */
@property (nonatomic, assign) StayMode stayMode;
```

#### 3. 选配项 <br>
```oc
/** 是否需要延迟改变alpha（效果类似不AssistiveTouch）
 *	default：YES
 */
@property (nonatomic, assign) BOOL shouldDelayChangeAlpha;
/** 悬浮球停留时的透明度（stayAlpha >= 0，1：不透明）
 *  default：不透明
 */
@property (nonatomic, assign) CGFloat stayAlpha;
```

* 具体使用详见demo


### Remind
* ARC
* iOS >= 8.0
* iPhone \ iPad 

## Hope
* If you find bug when used，Hope you can Issues me，Thank you or try to download the latest code of this framework to see the BUG has been fixed or not
* If you find the function is not enough when used，Hope you can Issues me，I very much to add more useful function to this framework ，Thank you !
