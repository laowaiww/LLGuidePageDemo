//
//  LLPageCollectionViewCell.m
//  LLGuidePageDemo
//
//  Created by 王威 on 16/6/30.
//  Copyright © 2016年 王威. All rights reserved.
//

#import "LLPageCollectionViewCell.h"

@implementation LLPageCollectionViewCell


-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.imageviewbg = [[UIImageView alloc]initWithFrame:self.bounds];
        [self addSubview:self.imageviewbg];
    }
    return self;
}



@end
