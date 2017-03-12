# XLTieBaLoading
### 显示效果如下
<img src="https://github.com/mengxianliang/XLTieBaLoading/blob/master/Image/1.gif" width=370 height=295 />
![image](https://is1-ssl.mzstatic.com/image/thumb/Purple62/v4/fe/78/0e/fe780eb8-4a22-5108-2687-a6eb6962aad6/pr_source.png/300x300bb.jpg?1489281369086)
![image](https://is1-ssl.mzstatic.com/image/thumb/Purple71/v4/02/6f/de/026fdea7-232f-76c5-d0de-60729bcb6981/pr_source.png/300x300bb.jpg?1489281369088)
![image](https://is1-ssl.mzstatic.com/image/thumb/Purple22/v4/fc/fb/6e/fcfb6ebe-65fa-41d9-4166-75e7d1e6d03f/pr_source.png/300x300bb.jpg?1489281369089)
### 实现原理
实现原理就是添加了三个ImageView,如图所示:
<br>
<img src="https://github.com/mengxianliang/XLTieBaLoading/blob/master/Image/explain.png" width=350 height=344 />
<br>
第一张图为底图，第二、三张图用于显示波浪效果，在第二张图前添加一个半透明遮罩，这样就得到了带阴影波浪分层的效果；然后在波浪移动时第二张图和第三张图的波浪设置一定的相位差，就得到了最终的效果。
<br>
### 如何实现波浪效果请参考：[我的博文](http://blog.csdn.net/u013282507/article/details/53121556)

