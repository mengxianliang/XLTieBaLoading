# XLTieBaLoading

### 显示效果

<img src="https://github.com/mengxianliang/XLTieBaLoading/blob/master/Image/1.gif" width=370 height=295 />

### 实现原理

<img src="https://github.com/mengxianliang/XLTieBaLoading/blob/master/Image/explain.png" width=350 height=344 />

如图所示:第一张图为底图，第二、三张图用于显示波浪效果，在第二张图前添加一个半透明遮罩，这样就得到了带阴影波浪分层的效果；然后在波浪移动时第二张图和第三张图的波浪设置一定的相位差，就得到了最终的效果。

<br>

### 使用方法
* 显示方法：

```objc
[XLTieBarLoading showInView:self.view];
```
* 隐藏方法：

```objc
[XLTieBarLoading hideInView:self.view];
```

### 浪效果的实现原理请参考:[我的博文](http://blog.csdn.net/u013282507/article/details/53121556)
