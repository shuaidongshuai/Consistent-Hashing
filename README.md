下载解压后直接根目录make然后就可以执行了./conHash<br>
`要加入到你的项目中，把src下面的东西copy进你的项目中就好了`

利用C++和STL库实现了一致性Hash算法
===
我主要是利用STL里面的map和list进行节点管理
--
由于STL里面有我想要的所有东西，所以我觉得没必要自己再去写一个红黑树啥的

为了避免Hash冲突我用了multimap
--
由于2^32个key hash冲突的机会太小了，所以这样做比较完美的解决了这个问题

要实现均衡负载，就必须要有一个很好的hash函数
--
hash函数我用了MD5，你也可以传进去一个自己的hash函数，我也提供了响应的接口去检查你的hash函数是否合理

下面是功能截图
--
![dong](http://img.blog.csdn.net/20171002161535903?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvUFJPR1JBTV9hbnl3aGVyZQ==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast)

![dong2](http://img.blog.csdn.net/20171002162351095?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvUFJPR1JBTV9hbnl3aGVyZQ==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast)

![dong2](http://img.blog.csdn.net/20171002162518565?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvUFJPR1JBTV9hbnl3aGVyZQ==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast)

![dong2](http://img.blog.csdn.net/20171002162745093?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvUFJPR1JBTV9hbnl3aGVyZQ==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast)

