//
//  MCPhotoView.m
//  MCPhotoBrowser
//
//  Created by 郭文豪 on 16/4/1.
//  Copyright © 2016年 郭文豪. All rights reserved.
//

#import "MCPhotoView.h"
#import "UIImageView+WebCache.h"

@implementation MCPhotoView
- (instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];

    if (self) {

        self.userInteractionEnabled = YES;
        self.contentMode = UIViewContentModeScaleAspectFill;
        self.clipsToBounds = YES;
        self.opaque = YES;
    }

    return self;
}
- (void)setPic_url:(NSString *)pic_url
{
    _pic_url = pic_url;
    // 1.在这里加载图片
    [self sd_setImageWithURL:[NSURL URLWithString:pic_url] placeholderImage:[UIImage imageNamed:@"bg_loading"]];

}
@end
