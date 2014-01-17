//
//  COINSdrawView.m
//  tapDrawing
//
//  Created by Shimizu Keiichi on 2014/01/17.
//  Copyright (c) 2014年 jp.ac.tsukuba.coins. All rights reserved.
//

#import "COINSdrawView.h"

@implementation COINSdrawView

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
    
    /*
    // Drawing code
    //線の色を青色に
    [[UIColor blueColor] setStroke];
    //線を引く
    UIBezierPath *line = [UIBezierPath bezierPath];
    //線の幅を指定
    [line setLineWidth:3];
    //始点を指定
    [line moveToPoint:CGPointMake(0, 658)];
    //線を追加
    [line addLineToPoint:CGPointMake(1024, 0)];
    //線を描画
    [line stroke];
    */
    //----グリッドの準備----
    //線の色を黒に
    [[UIColor lightGrayColor] setStroke];
    //四角形を書くuibezierpathを作成
    UIBezierPath *edgeLine = [UIBezierPath bezierPathWithRect:rect];
    //線の幅を指定
    [edgeLine setLineWidth:6.0f];
    //四角形の描画
    [edgeLine stroke];
    
    CGPoint shiftPoint = CGPointMake(0.5f, 0.5f);
    
    //線を書くuibezierpathを作成
    UIBezierPath *gridLine = [UIBezierPath bezierPath];
    //線の幅を指定
    [gridLine setLineWidth:1.0f];
    //罫線の定義
    float startX = shiftPoint.x;
    float endX = startX + 1024.0f;
    float deltaX = 1024.0f / 21.0f;
    float startY = shiftPoint.y;
    float endY = startY + 658.0f;
    float deltaY = 658.0f / 14.0f;
    //縦線
    for (float x = startX + deltaX; x < endX; x += deltaX) {
        [gridLine moveToPoint:CGPointMake(x, startY)];
        [gridLine addLineToPoint:CGPointMake(x, endY)];
    }
    //横線
    for (float y = startY + deltaY; y < endY; y += deltaY) {
        [gridLine moveToPoint:CGPointMake(startX, y)];
        [gridLine addLineToPoint:CGPointMake(endX, y)];
    }
    //罫線の描画
    [gridLine stroke];
    
    /*
    
    [[UIColor redColor] setStroke];
    
    
     // 円を書くUIBezierPathを生成
     UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:
     CGRectMake(shiftPoint.x + 32.0f,
     shiftPoint.x + 32.0f,
     64.0f,
     64.0f)];
     // 円を描画
    [circle stroke];
     
    */
   
    
}

+(void)drawCircle:(CGPoint)center PointInCircumference:(CGPoint)point{
    
}
+(void)drawLine:(CGPoint)start EndPoint:(CGPoint)end{
    //線の色を青色に
    [[UIColor blueColor] setStroke];
    //線を引く
    UIBezierPath *line = [UIBezierPath bezierPath];
    //線の幅を指定
    [line setLineWidth:3];
    //始点を指定
    [line moveToPoint:CGPointMake(0, 0)];
    //線を追加
    [line addLineToPoint:CGPointMake(1024, 658)];
    //線を描画
    [line stroke];
}

@end
