//
//  MCPhotosView.m
//  MCPhotoBrowser
//
//  Created by 郭文豪 on 16/4/1.
//  Copyright © 2016年 郭文豪. All rights reserved.
//

#import "MCPhotosView.h"
#import "MJPhotoBrowser.h"
#import "MJPhoto.h"
#import "MCPhotoView.h"
//图片的最大个数
#define PicturesMaxCount 9
//对4张图片的时候进行判断   如果是4张则显示两列 其他3列
#define PicturesMaxCols(photosCount) ((photosCount == 4) ? 2 :3)
//每个图片的宽
#define PicturesW ([UIScreen mainScreen].bounds.size.width-40)/3
//每个图片的高
#define PicturesH PicturesW
//图片的间距
#define PicturesMargin 4

@implementation MCPhotosView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
        //预先创建9个图片控件
        for (int i = 0; i < PicturesMaxCount; i++){
            MCPhotoView *photoView = [[MCPhotoView alloc] init];
            photoView.tag = i;
            [self addSubview:photoView];
            //添加手势 点击查看大图
            UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pictureTap:)];
            [photoView addGestureRecognizer:gesture];
        }
    }
    return self;
}

- (void)pictureTap:(UITapGestureRecognizer *)recognizer {
    // 创建图片浏览器
    MJPhotoBrowser *browser = [[MJPhotoBrowser alloc] init];
    // 设置图片浏览器显示的所有图片
    NSMutableArray *photos = [NSMutableArray array];
    int count = (int)self.pic_array.count;
    for (int i = 0; i <count; i++){
        MJPhoto *photo = [[MJPhoto alloc] init];
        photo.url = [NSURL URLWithString:_pic_array[i]];
        //设置来源于哪一个UIImageView
        photo.srcImageView = self.subviews[i];
        [photos addObject:photo];
    }
    browser.photos = photos;
    browser.currentPhotoIndex = recognizer.view.tag;
    // 显示图片浏览器
    [browser show];
}
-(void)setPic_array:(NSArray *)pic_array
{
    _pic_array = pic_array;
    for (int i = 0; i < PicturesMaxCount; i++){

        MCPhotoView *photoView = self.subviews[i];
        if (i < pic_array.count){
            photoView.pic_url = pic_array[i];
            photoView.hidden = NO;
        }else{
            photoView.hidden = YES;
        }
    }
}
//计算每个图片的坐标与大小
-(void)layoutSubviews
{
    [super layoutSubviews];
    int count = (int)self.pic_array.count;
    int maxCols = PicturesMaxCols(count);

    for (int i = 0; i < count; i++){
        MCPhotoView *photoView = self.subviews[i];
        int x = (i % maxCols) * (PicturesW + PicturesMargin);
        int y = (i / maxCols) * (PicturesW + PicturesMargin);
        photoView.frame = CGRectMake(x,y,PicturesW,PicturesH);
    }
}
//计算总尺寸
+ (CGSize)picturesSizeWithCount:(NSInteger)photosCount {

    NSInteger maxCols = PicturesMaxCols(photosCount);

    // 总列数
    NSInteger totalCols = photosCount >= maxCols ? maxCols : photosCount;

    // 总行数
    NSInteger totalRows = (photosCount + maxCols - 1) / maxCols;

    // 计算总尺寸
    CGFloat photosW = totalCols * PicturesW + (totalCols - 1) * PicturesMargin;
    CGFloat photosH = totalRows * PicturesH + (totalRows - 1) * PicturesMargin;

    return CGSizeMake(photosW, photosH);
}

@end
