//
//  COINSPointDraw.m
//  tapDrawing
//
//  Created by Shimizu Keiichi on 2014/02/12.
//  Copyright (c) 2014年 jp.ac.tsukuba.coins. All rights reserved.
//

#import "COINSPointDraw.h"

@implementation COINSPointDraw

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
    [[UIColor redColor] setStroke];
    [[UIColor yellowColor] setFill];
    UIBezierPath *point = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(rect.origin.x, rect.origin.y, 10.0f, 10.0f)];
    [point stroke];
    [point fill];
}

@end
