
# SGEasyButton


## 前沿
* SGEasyButton 是关于 UIButton 的一个分类集合


### 效果图：一句代码搞定按钮的图片与文字布局样式

![](https://github.com/kingsic/SGEasyButton/raw/master/Picture/sorgle.png)


## 主要内容的介绍

* `UIButton+SGEvent (按钮响应事件时间间隔)`<br>

* `UIButton+SGImagePosition (一句代码搞定按钮的图片与文字布局样式)`<br>


## SGEasyButton 集成

* 1、CocoaPods 导入 pod 'SGEasyButton'

* 2、下载、拖拽 “SGEasyButton” 文件夹到工程中
 
#### 按钮响应事件时间间隔的设置
```Objective-C
    button.SG_timeInterval = 2;
```

#### 一句代码搞定按钮的图片与文字布局样式
```Objective-C
/**
 *  设置图片与文字样式
 *
 *  @param imagePositionStyle     图片位置样式
 *  @param spacing                图片与文字之间的间距
 */
- (void)SG_imagePositionStyle:(SGImagePositionStyle)imagePositionStyle spacing:(CGFloat)spacing;
```


## Concluding remarks

* 如在使用中, 遇到什么问题或有更好建议者, 请记得 [Issues me](https://github.com/kingsic/SGEasyButton/issues) 或 kingsic@126.com 邮箱联系我

