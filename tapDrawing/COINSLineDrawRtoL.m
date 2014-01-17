//
//  COINSLineDrawRtoL.m
//  tapDrawing
//
//  Created by Shimizu Keiichi on 2014/01/18.
//  Copyright (c) 2014年 jp.ac.tsukuba.coins. All rights reserved.
//

#import "COINSLineDrawRtoL.h"

@implementation COINSLineDrawRtoL

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
    //線の色を青色に
    [[UIColor blueColor] setStroke];
    //線を引く
    UIBezierPath *line = [UIBezierPath bezierPath];
    //線の幅を指定
    [line setLineWidth:3];
    //始点を指定
    [line moveToPoint:CGPointMake(rect.origin.x , rect.origin.y + rect.size.height)];
    //線を追加
    [line addLineToPoint:CGPointMake(rect.origin.x + rect.size.width, rect.origin.y)];
    //線を描画
    [line stroke];

}

@end
