//
//  MCPicturesTableViewCell.h
//  MCPhotoBrowser
//
//  Created by 郭文豪 on 16/4/1.
//  Copyright © 2016年 郭文豪. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MCPhotosView.h"
@interface MCPicturesTableViewCell : UITableViewCell
/** 灰色背景 */
@property (nonatomic, strong) UIView * bgView;
/** 内容 */
@property (nonatomic, strong) UIView * infoView;

/** 头像 */
@property (nonatomic, strong) UIImageView * iconView;
/** 昵称 */
@property (nonatomic, strong) UILabel * nicknameLabel;
/** 日期 */
@property (nonatomic, strong) UILabel * dateLabel;

//分割线
@property (nonatomic, strong) UIView * separation;

@property (nonatomic, strong) MCPhotosView *photosView;


@end
