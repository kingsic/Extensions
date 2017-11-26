
# SGEasyButton


## 前沿

* SGEasyButton 是关于 UIButton 的一个分类集合


### 效果图：一句代码搞定按钮的图片与文字布局样式

![](https://github.com/kingsic/SGEasyButton/raw/master/Picture/sorgle.png)


## 主要内容的介绍

* `UIButton+SGEvent (按钮响应事件时间间隔分类)`<br>

* `UIButton+SGCountdown (获取验证码分类)`<br>

* `UIButton+SGImagePosition (一句代码搞定按钮的图片与文字布局样式分类)`<br>


## SGEasyButton 集成

* 1、CocoaPods 导入 pod 'SGEasyButton' '~> 0.0.5'

* 2、下载、拖拽 “SGEasyButton” 文件夹到工程中
 
#### 一句代码搞定按钮的连续点击问题
```
button.SG_eventTimeInterval = 1;
```

#### 一句代码搞定按钮的获取验证码设置
```
[button SG_countdownWithSec:30];
```

#### 一句代码搞定按钮的图片与文字布局样式
```
/**
 *  设置图片与文字样式
 *
 *  @param imagePositionStyle     图片位置样式
 *  @param spacing                图片与文字之间的间距
 */
- (void)SG_imagePositionStyle:(SGImagePositionStyle)imagePositionStyle spacing:(CGFloat)spacing;

/**
 *  设置图片与文字样式（推荐使用）
 *
 *  @param imagePositionStyle     图片位置样式
 *  @param spacing                图片与文字之间的间距
 *  @param imagePositionBlock     在此 Block 中设置按钮的图片、文字以及 contentHorizontalAlignment 属性
 */
- (void)SG_imagePositionStyle:(SGImagePositionStyle)imagePositionStyle spacing:(CGFloat)spacing imagePositionBlock:(void (^)(UIButton *button))imagePositionBlock;
```


## 问题及解决方案

#### 1、CocoaPods 安装 SGEasyButton 时，遇到的问题及解决方案

* 若在使用 CocoaPods 安装 SGEasyButton 时，出现 [!] Unable to find a specification for SGEasyButton 提示时，打开终端先输入 pod repo remove master；执行完毕后再输入 pod setup 即可 (可能会等待一段时间)


## 版本记录

2017-09-17 ：初始化版本

2017-09-25 ：新增获取验证码分类

2017-11-21 ：v0.0.5 新增 SG_imagePositionStyle:spacing:imagePosition 方法


## Concluding remarks

* 如在使用中, 遇到什么问题或有更好建议者, 请记得 [Issues me](https://github.com/kingsic/SGEasyButton/issues) 或 kingsic@126.com 邮箱联系我

