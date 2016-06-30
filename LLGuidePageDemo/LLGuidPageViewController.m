//
//  LLGuidPageViewController.m
//  LLGuidePageDemo
//
//  Created by 王威 on 16/6/30.
//  Copyright © 2016年 王威. All rights reserved.
//

#import "LLGuidPageViewController.h"
#import "LLPageCollectionViewCell.h"
#import "ViewController.h"


@interface LLGuidPageViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>

@end

@implementation LLGuidPageViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self addCollectionView];
}

- (void)addCollectionView
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    
    // 设置cell 大小
    layout.itemSize = self.view.bounds.size;
    
    // 设置滑动方向
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    // 设置间距
    layout.minimumLineSpacing = 0;
    
    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:layout];
    
    collectionView.delegate = self;
    
    collectionView.dataSource = self;
    // 隐藏滚动条
    collectionView.showsHorizontalScrollIndicator = NO;
    
    // 设置分页效果
    collectionView.pagingEnabled = YES;
    
    // 设置弹簧效果
    collectionView.bounces =  NO;
    
    [self.view addSubview:collectionView];
    
    [collectionView registerClass:[LLPageCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LLPageCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.imageviewbg.image = [UIImage imageNamed:self.dataArray[indexPath.row]];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == self.dataArray.count - 1) {
        [self presentViewController:self.controller animated:YES completion:nil];
    }
}
@end
