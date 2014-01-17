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
    _isRuler = true;
    self.view.backgroundColor = [UIColor whiteColor];
	// Do any additional setup after loading the view, typically from a nib.
    drawView = [[COINSdrawView alloc] initWithFrame:CGRectMake(0, 20, 1024, 658)];
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

- (IBAction)tapAction:(id)sender {
    if (_isFirst) {
        _firstPoint = [sender locationInView:drawView];
        _isFirst = false;
    }else{
        CGPoint location = [sender locationInView:drawView];
        if (_isRuler) {
            [self drawLine:_firstPoint EndPoint:location];
        }else{
            [self drawCircle:_firstPoint PointInCircumference:location];
        }
    }
    
}

-(void)drawLine:(CGPoint)start EndPoint:(CGPoint)end{
    
}
-(void)drawCircle:(CGPoint)center PointInCircumference:(CGPoint)point{
    
}


@end
