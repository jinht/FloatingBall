## FloatingBall

### 一言不合就上图
<img src="https://raw.githubusercontent.com/jinht/FloatingBall/master/ReadMEImages/JhtFloatingBall.gif" width=250 height=445 /> <br>


### Function Description
 1. 轻量级UI控件
 2. 辅助按钮/悬浮球(AssistiveTouch)
 3. 支持两种停靠方式及相关自定义设置
 
 
### How to use
#### 1. podfile
```oc
platform:ios, '8.0'

target '*****' do

pod 'JhtFloatingBall'
        
end

```


#### 2. 简单的初始化
```oc
UIImage *suspendedBallImage = [UIImage imageNamed:@"SuspendedBall"];
JhtFloatingBall *fb = [[JhtFloatingBall alloc] initWithFrame:CGRectMake(0, 20, suspendedBallImage.size.width * 0.65, suspendedBallImage.size.height * 0.65)];
fb.image = suspendedBallImage;
[self.view addSubview:fb];
```

#### 3. 悬浮球停靠的方式 <br>
```oc
// 停靠方式
typedef NS_ENUM(NSInteger, Jht_StayMode) {
    // 四周停靠（优先考虑左右两侧，具体处理逻辑同AssistiveTouch）
    stayMode_Around = 0,
    // 左侧停靠
    stayMode_OnlyLeft,
    // 右侧停靠
    stayMode_OnlyRight,
};

/** 悬浮球停靠方式
 *  default：StayMode_Around（优先考虑左右两侧，具体处理逻辑同AssistiveTouch）
 *  请注意 起始点 与 停靠方式 的一致性
 */
@property (nonatomic, assign) Jht_StayMode stayMode;
```

#### 4. 选配项 <br>
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

* 具体使用详见demo（使用demo之前请先 **pod install** ）


### Remind
* ARC
* iOS >= 8.0
* iPhone \ iPad 


## Hope
* If you find bug when used，Hope you can Issues me，Thank you or try to download the latest code of this framework to see the BUG has been fixed or not
* If you find the function is not enough when used，Hope you can Issues me，I very much to add more useful function to this framework ，Thank you !
