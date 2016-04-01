//
//  MCPicturesTableViewCell.m
//  MCPhotoBrowser
//
//  Created by 郭文豪 on 16/4/1.
//  Copyright © 2016年 郭文豪. All rights reserved.
//

#import "MCPicturesTableViewCell.h"
#import "Masonry.h"
@implementation MCPicturesTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupViews];
    }
    return self;
}


#pragma mark - UI
/** 搭建界面 */
- (void)setupViews {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.contentView.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:self.bgView];
    [self.bgView addSubview:self.iconView];
    [self.bgView addSubview:self.nicknameLabel];
    [self.bgView addSubview:self.dateLabel];
    [self.bgView addSubview:self.infoView];
    [self.bgView addSubview:self.separation];

    //把图片的view加载到视图
    [self.infoView addSubview:self.photosView];

    [self setupLayouts];
}

/** 创建约束 */
- (void)setupLayouts {
    __weak UIView * contentView = self.contentView;
    __weak UIView * superView = self.bgView;
    __weak UIView * iconView = self.iconView;
    __weak UIView * nicknameLabel = self.nicknameLabel;
    __weak UIView * dateLabel = self.dateLabel;
    __weak UIView * infoView = self.infoView;
    __weak UIView * separation = self.separation;
    __weak UIView *photosView = self.photosView;

    //bgView 居左5 居右5
    [superView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(contentView);
        make.bottom.equalTo(contentView);
        make.left.equalTo(contentView).offset(5);
        make.right.equalTo(contentView).offset(-5);
    }];

    [separation mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView.mas_top).offset(0.1);
        make.left.mas_equalTo(contentView.mas_left).offset(8);
        make.right.mas_equalTo(contentView.mas_right).offset(-8);

        make.height.mas_equalTo(1);
    }];

    //头像 居上7 居左7
    //设置圆角
    CGSize iconSize = CGSizeMake(64, 64);
    iconView.layer.masksToBounds = YES;
    iconView.layer.cornerRadius = iconSize.width / 2;
    [iconView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(iconSize);
        make.left.equalTo(superView).offset(7);
        make.top.equalTo(superView).offset(7);
    }];


    //昵称 居头像左 8 底部居头像中偏上1
    [nicknameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(iconView.mas_right).offset(8);
        make.bottom.equalTo(iconView.mas_centerY).offset(-1);
    }];

    //日期 居左同昵称 顶部居头像中偏下1
    [dateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(nicknameLabel);
        make.bottom.equalTo(iconView.mas_bottom).offset(-1);
        make.height.mas_equalTo(12);
    }];

    //内容 居上头像底部7 居下紧贴白色分割线
    [infoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(superView);
        make.right.equalTo(superView);
        make.bottom.equalTo(contentView.mas_bottom).offset(-7);
    }];
    [photosView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(iconView.mas_bottom).offset(7);
        make.right.mas_equalTo(infoView.mas_right).offset(-5);
        make.left.mas_equalTo(infoView.mas_left).offset(5);
        make.bottom.mas_equalTo(infoView.mas_bottom).offset(-7);

    }];

    [contentView updateConstraintsIfNeeded];
}


#pragma mark - getter //懒加载提升性能
- (UIView *)bgView {
    if (_bgView == nil) {
        _bgView = [[UIView alloc] init];
        _bgView.backgroundColor = [UIColor whiteColor];
    }
    return _bgView;
}
- (UIView *)infoView {
    if (_infoView == nil) {
        _infoView = [[UIView alloc] init];
    }
    return _infoView;
}
- (UIImageView *)iconView {
    if (_iconView == nil) {
        _iconView = [[UIImageView alloc] init];
        _iconView.userInteractionEnabled = YES;
        _iconView.image = [UIImage imageNamed:@"pengyouquan"];
    }
    return _iconView;
}
- (UILabel *)nicknameLabel {
    if (_nicknameLabel == nil) {
        _nicknameLabel = [[UILabel alloc] init];
        _nicknameLabel.textColor = [UIColor blackColor];
        _nicknameLabel.font = [UIFont systemFontOfSize:15];
        
    }
    return _nicknameLabel;
}
-(UIView *)separation
{
    if (_separation == nil)
    {
        _separation = [[UIView alloc]init];
        _separation.backgroundColor = [UIColor grayColor];
    }
    return _separation;
}
- (UILabel *)dateLabel {
    if (_dateLabel == nil) {
        _dateLabel = [[UILabel alloc] init];
        _dateLabel.textColor = [UIColor lightGrayColor];
        _dateLabel.font = [UIFont systemFontOfSize:13];
    }
    return _dateLabel;
}
-(MCPhotosView *)photosView
{
    if (_photosView == nil) {
        _photosView = [[MCPhotosView alloc]init];

    }
    return _photosView;
}
@end

