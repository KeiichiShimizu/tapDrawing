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

- (void)viewDidLoad
{
    [super viewDidLoad];
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
}
@end
