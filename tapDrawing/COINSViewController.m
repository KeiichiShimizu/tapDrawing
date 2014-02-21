//
//  COINSViewController.m
//  tapDrawing
//
//  Created by Shimizu Keiichi on 2014/01/17.
//  Copyright (c) 2014年 jp.ac.tsukuba.coins. All rights reserved.
//

#import "COINSViewController.h"



@interface COINSViewController ()

@end

@implementation COINSViewController
@synthesize isRuler = _isRuler;
@synthesize isFirst = _isFirst;
@synthesize firstPoint = _firstPoint;

- (void)viewDidLoad
{
    [super viewDidLoad];
    _isFirst = true;
    _isRuler = true;
    self.view.backgroundColor = [UIColor whiteColor];
	// Do any additional setup after loading the view, typically from a nib.
    drawView = [[COINSdrawView alloc] initWithFrame:CGRectMake(0, 20, 1024, 640)];
    [self.view addSubview:drawView];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rulerButtonAction:(id)sender {
    /*
    CGPoint start = CGPointMake(1, 1);
    CGPoint end = CGPointMake(2, 2);
    [COINSdrawView drawLine:start EndPoint:end];
    */
    _isRuler = true;
}

- (IBAction)compassButtonAction:(id)sender {
    _isRuler = false;
}

- (IBAction)tapAction:(id)sender {
    NSLog(@"tapped");
    if (_isFirst) {
        _firstPoint = [sender locationInView:drawView];
        _isFirst = false;
    }else{
        CGPoint location = [sender locationInView:drawView];
        if (_isRuler) {
            [self drawLine:_firstPoint EndPoint:location];
            _isFirst = true;
        }else{
            [self drawCircle:_firstPoint PointInCircumference:location];
            _isFirst = true;
        }
    }
    
}

- (IBAction)acButtonAction:(id)sender {
    /**/
    [drawView removeFromSuperview];
    _isFirst = true;
    drawView = [[COINSdrawView alloc] initWithFrame:CGRectMake(0, 20, 1024, 611)];
    [self.view addSubview:drawView];
}

-(void)drawLine:(CGPoint)start EndPoint:(CGPoint)end{
    CGFloat distance = getDistance(start, end);
    if (start.x > end.x && start.y > end.y) {
        COINSLinedraw *lineDraw = [[COINSLinedraw alloc] initWithFrame:CGRectMake(MIN(start.x, end.x), MIN(start.y, end.y), ABS(start.x-end.x), ABS(start.y-end.y))];
            [drawView addSubview:lineDraw];
    }else if(start.x < end.x && start.y < end.y){
        COINSLinedraw *lineDraw = [[COINSLinedraw alloc] initWithFrame:CGRectMake(MIN(start.x, end.x), MIN(start.y, end.y), ABS(start.x-end.x), ABS(start.y-end.y))];
            [drawView addSubview:lineDraw];
    }else{
        COINSLineDrawRtoL *lineDraw = [[COINSLineDrawRtoL alloc] initWithFrame:CGRectMake(MIN(start.x, end.x), MIN(start.y, end.y), ABS(start.x-end.x), ABS(start.y-end.y))];
            [drawView addSubview:lineDraw];
    }
    


}
-(void)drawCircle:(CGPoint)center PointInCircumference:(CGPoint)point{
    CGFloat radius = getDistance(center, point);
    COINSCircleDraw *circle = [[COINSCircleDraw alloc] initWithFrame:CGRectMake(center.x-radius, center.y-radius, 2*radius, 2*radius)];
    [drawView addSubview:circle];
}


CGPoint fitToGrid(CGPoint Poit){
    CGPoint newPoint;
    
    
    return newPoint;
}


CGFloat getDistance(CGPoint p, CGPoint q)
{
    return sqrtf((p.x-q.x)*(p.x-q.x) + (p.y-q.y)*(p.y-q.y));
}



@end
