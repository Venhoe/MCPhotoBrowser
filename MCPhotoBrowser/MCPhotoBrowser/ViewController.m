//
//  ViewController.m
//  MCPhotoBrowser
//
//  Created by 郭文豪 on 16/4/1.
//  Copyright © 2016年 郭文豪. All rights reserved.
//

#import "ViewController.h"
#import "MCPicturesTableViewCell.h"
#import "MCPhotosView.h"
@interface ViewController ()

@end

@implementation ViewController
- (instancetype)init {
    if (self = [super initWithStyle:UITableViewStyleGrouped]) {
    }
    return self;
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    [self setDataList];
}

-(void)setDataList{
    //----------------------------------------------模拟数据－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－
    NSArray * array1 =[[NSArray alloc] initWithObjects:@"http://7xp6gv.com2.z0.glb.qiniucdn.com/00AE4395-36A9-4A93-A418-28B03C6D7529",nil];

    NSArray * array2 =[[NSArray alloc] initWithObjects:
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/00AE4395-36A9-4A93-A418-28B03C6D7529",@"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",nil];
    NSArray * array3 =[[NSArray alloc] initWithObjects:
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/00AE4395-36A9-4A93-A418-28B03C6D7529",@"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",@"http://7xp6gv.com2.z0.glb.qiniucdn.com/04ab806c-54f6-45dc-a937-37fc587e4d92.jpg",nil];
    NSArray * array4 =[[NSArray alloc] initWithObjects:
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/00AE4395-36A9-4A93-A418-28B03C6D7529",@"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",@"http://7xp6gv.com2.z0.glb.qiniucdn.com/04ab806c-54f6-45dc-a937-37fc587e4d92.jpg",@"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",nil];
    NSArray * array5 =[[NSArray alloc] initWithObjects:
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/00AE4395-36A9-4A93-A418-28B03C6D7529",@"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",@"http://7xp6gv.com2.z0.glb.qiniucdn.com/04ab806c-54f6-45dc-a937-37fc587e4d92.jpg",@"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",@"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",nil];
    NSArray * array6 =[[NSArray alloc] initWithObjects:
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/00AE4395-36A9-4A93-A418-28B03C6D7529",@"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",@"http://7xp6gv.com2.z0.glb.qiniucdn.com/04ab806c-54f6-45dc-a937-37fc587e4d92.jpg",@"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",@"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",@"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",nil];
    NSArray * array7 =[[NSArray alloc] initWithObjects:
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/00AE4395-36A9-4A93-A418-28B03C6D7529",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/04ab806c-54f6-45dc-a937-37fc587e4d92.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/0efce040-b80a-4e74-bb5e-bee54f46c04c.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",nil];
    NSArray * array8 =[[NSArray alloc] initWithObjects:
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/00AE4395-36A9-4A93-A418-28B03C6D7529",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/04ab806c-54f6-45dc-a937-37fc587e4d92.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/0EF3D4E5-7CFC-4D11-9D21-E5D2234B6C5E",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",nil];
    NSArray * array9 =[[NSArray alloc] initWithObjects:
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/00AE4395-36A9-4A93-A418-28B03C6D7529",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/04ab806c-54f6-45dc-a937-37fc587e4d92.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/0ADF31CE-2044-4FDE-ACB6-F087C335C514",
                       @"http://7xp6gv.com2.z0.glb.qiniucdn.com/01276503-b122-4491-829c-9abb124fe616.jpg",nil];

    [self.dataList addObject:array1];

    [self.dataList addObject:array2];

    [self.dataList addObject:array3];

    [self.dataList addObject:array4];

    [self.dataList addObject:array5];

    [self.dataList addObject:array6];

    [self.dataList addObject:array7];

    [self.dataList addObject:array8];

    [self.dataList addObject:array9];

    [self.tableView reloadData];

}
- (void)viewDidLoad {
    [super viewDidLoad];

    //初始化tableview
    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0.1)];
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0.1)];
    [self.tableView registerClass:[MCPicturesTableViewCell class] forCellReuseIdentifier:[[MCPicturesTableViewCell class] description]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSLog(@"self.dataList.Count = %lu",(unsigned long)self.dataList.count);
    return self.dataList.count;
}

//Footer
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.01;
}
//Header
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.01;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    //临时存放图片url的array
    NSArray *picArray = [[NSArray alloc]init];
    picArray = self.dataList[indexPath.section];

    //计算图片的总高度
    return [MCPhotosView picturesSizeWithCount:picArray.count].height+64+7+14;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    NSString*CellIdentifier = [NSString stringWithFormat:@"%ld",(long)indexPath.section+233];

    MCPicturesTableViewCell * cell = (MCPicturesTableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[MCPicturesTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[[MCPicturesTableViewCell class] description]];
    }
    [self setMCPicturesTableViewCell:cell cellForRowAtIndexPath:indexPath];
    return cell;
}
//给cell赋值
-(void)setMCPicturesTableViewCell:(MCPicturesTableViewCell *)cell cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.photosView.pic_array = self.dataList[indexPath.section];
    cell.nicknameLabel.text = [NSString stringWithFormat:@"%ld张图片",indexPath.section+1];
}

-(NSMutableArray *)dataList
{
    if (_dataList == nil) {
        _dataList = [[NSMutableArray alloc]init];
    }
    return _dataList;
}

@end
