#JSCustomPageControlDemo
Demo简介：  
自定义pageControl,可以自定义图片，大小，圆角等  
  
使用方法：
使用起来很简单，只要导入头文件，然后添加到视图中，然后就可以按照自己的需求设置了  
  
使用示例：  
<pre>
<code>  
- (JSPageControl *)myPageControl {
    if (!_myPageControl) {
        _myPageControl = [[JSPageControl alloc] init];
        _myPageControl.thumWidth = [UIImage imageNamed:@"pageControl_currentImage"].size.width;
        _myPageControl.thumHeight = [UIImage imageNamed:@"pageControl_currentImage"].size.height;
        _myPageControl.currentImage = [UIImage imageNamed:@"pageControl_currentImage"];
        _myPageControl.thumImage = [UIImage imageNamed:@"pageControl_thumImage"];
        _myPageControl.numberOfPages = self.pageNumbers;
    }
    return _myPageControl;
}
</code>
</pre>