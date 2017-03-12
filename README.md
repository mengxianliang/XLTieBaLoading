# XLTieBaLoading
### 显示效果如下
<img src="https://github.com/mengxianliang/XLTieBaLoading/blob/master/Image/1.gif" width=370 height=295 />
<img src="https://is1-ssl.mzstatic.com/image/thumb/Newsstand62/v4/cc/3b/fb/cc3bfb7a-9e48-9116-b6e7-b2d34a59a6d7/Icon-60@2x.png.png/75x9999bb.png" width=370 height=295 />
<img src="https://github.com/mengxianliang/XLTieBaLoading/blob/master/Image/explain.png" width=350 height=344 />
### 实现原理
实现原理就是添加了三个ImageView,如图所示:
<br>
<img src="https://github.com/mengxianliang/XLTieBaLoading/blob/master/Image/explain.png" width=350 height=344 />
<br>
第一张图为底图，第二、三张图用于显示波浪效果，在第二张图前添加一个半透明遮罩，这样就得到了带阴影波浪分层的效果；然后在波浪移动时第二张图和第三张图的波浪设置一定的相位差，就得到了最终的效果。
<br>
### 如何实现波浪效果请参考：[我的博文](http://blog.csdn.net/u013282507/article/details/53121556)

