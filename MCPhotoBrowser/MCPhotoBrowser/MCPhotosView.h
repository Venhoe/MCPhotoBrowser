//
//  MCPhotosView.h
//  MCPhotoBrowser
//
//  Created by 郭文豪 on 16/4/1.
//  Copyright © 2016年 郭文豪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCPhotosView : UIImageView
/** 图片的Url数组*/
@property(nonatomic,copy)NSArray *pic_array;

/** 根据图片的个数计算显示图片的高度*/
+ (CGSize)picturesSizeWithCount:(NSInteger)photosCount;
@end
