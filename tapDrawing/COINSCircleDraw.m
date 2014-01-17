//
//  COINSCircleDraw.m
//  tapDrawing
//
//  Created by Shimizu Keiichi on 2014/01/18.
//  Copyright (c) 2014年 jp.ac.tsukuba.coins. All rights reserved.
//

#import "COINSCircleDraw.h"

@implementation COINSCircleDraw

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGPoint shiftPoint = CGPointMake(0.5f, 0.5f);
    [[UIColor redColor] setStroke];
    
    // 円を書くUIBezierPathを生成
    UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:
                            CGRectMake(shiftPoint.x + 32.0f,
                                       shiftPoint.x + 32.0f,
                                       64.0f,
                                       64.0f)];
    // 円を描画
    [circle stroke];

    
}


@end
