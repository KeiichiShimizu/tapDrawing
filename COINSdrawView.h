//
//  COINSdrawView.h
//  tapDrawing
//
//  Created by Shimizu Keiichi on 2014/01/17.
//  Copyright (c) 2014年 jp.ac.tsukuba.coins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface COINSdrawView : UIView

+(void)drawCircle:(CGPoint) center PointInCircumference:(CGPoint) point;
+(void)drawLine:(CGPoint) start EndPoint:(CGPoint) end;


@end
