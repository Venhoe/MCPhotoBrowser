# MCPhotoBrowser
三步快速实现仿新浪,微信朋友圈九宫格图片布局

![image](https://raw.githubusercontent.com/Duangser/MCPhotoBrowser/master/Untitled1.gif)


第一步：
可以直接将MCPhotoView.h,MCPhotoView.m,MCPhotosView.h,MCPhotosView.m这四个文件拖入到你的项目中。
（项目中用到的预览图片的第三方是SDWebImage和MJPhotoBrowser，都是最常用的估计你们也用）

第二步：在你需要显示的地方初始化，demo中是写在了自定义的cell里面。
 MCPhotosView＊photosView = [[MCPhotosView alloc]init];
 ［self.view addSubView photosView];
 
第三步：调用+ (CGSize)picturesSizeWithCount:(NSInteger)photosCount;计算显示的高度
将图片的数组 传给pic_array 
见demo中//给cell赋值
-(void)setMCPicturesTableViewCell:(MCPicturesTableViewCell *)cell cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//将数据赋值给photosView.pic_array
    cell.photosView.pic_array = self.dataList[indexPath.section];
    cell.nicknameLabel.text = [NSString stringWithFormat:@"%ld张图片",indexPath.section+1];
}

只是一个简单的实现，初学者可以看看，大神们就路过吧
OK👌啦

 
