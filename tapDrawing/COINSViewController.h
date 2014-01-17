//
//  COINSViewController.h
//  tapDrawing
//
//  Created by Shimizu Keiichi on 2014/01/17.
//  Copyright (c) 2014年 jp.ac.tsukuba.coins. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "COINSdrawView.h"

@class COINSdrawView;

@interface COINSViewController : UIViewController {
    COINSdrawView *drawView;
}
- (IBAction)rulerButtonAction:(id)sender;


@end
