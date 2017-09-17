
# SGImagePositionButton

一句代码搞定按钮的图片与文字布局样式


## 效果图

![](https://github.com/kingsic/SGImagePositionButton/raw/master/Picture/sorgle.png)


## SGImagePositionButton 集成

* 1、CocoaPods 导入 pod 'SGImagePositionButton'

* 2、下载、拖拽 “SGImagePositionButton” 文件夹到工程中
 
* 3、导入 SGImagePositionButton.h 头文件并调用 "SG_imagePosition:spacing" 方法即可设置你想要的布局样式

```Objective-C
/**
 *  设置图片与文字样式
 *
 *  @param imagePosition     图片位置样式
 *  @param spacing           图片与文字之间的间距
 */
- (void)SG_imagePosition:(SGImagePosition)imagePosition spacing:(CGFloat)spacing;
```


## Concluding remarks

* 如在使用中, 遇到什么问题或有更好建议者, 请记得 [Issues me](https://github.com/kingsic/SGImagePositionButton/issues) 或 kingsic@126.com 邮箱联系我

