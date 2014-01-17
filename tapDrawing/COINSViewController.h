//
//  COINSViewController.h
//  tapDrawing
//
//  Created by Shimizu Keiichi on 2014/01/17.
//  Copyright (c) 2014年 jp.ac.tsukuba.coins. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "COINSdrawView.h"
#import "COINSLinedraw.h"
#import "COINSCircleDraw.h"

@class COINSdrawView;

@interface COINSViewController : UIViewController {
    COINSdrawView *drawView;
    
}
- (IBAction)rulerButtonAction:(id)sender;
- (IBAction)tapAction:(id)sender;
-(void)drawLine:(CGPoint)start EndPoint:(CGPoint)end;
-(void)drawCircle:(CGPoint)center PointInCircumference:(CGPoint)point;
@property bool isRuler;
@property bool isFirst;
@property CGPoint firstPoint;

@end
