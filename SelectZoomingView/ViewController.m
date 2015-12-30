//
//  ViewController.m
//  BouncingView
//
//  Created by hirokiumatani on 2015/12/30.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet ZoomingView *blueView;
@property (weak, nonatomic) IBOutlet ZoomingView *orangeView;
@property (weak, nonatomic) IBOutlet ZoomingView *greenView;
@property (weak, nonatomic) IBOutlet ZoomingView *blackView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    /**Blue View*/
    _blueView.delegate          = self;
    _blueView.topMargin         = 64;
    _blueView.bottomMargin      = 6;
    _blueView.leftMargin        = 6;
    _blueView.rightMargin       = 6;
    _blueView.isShadow          = YES;
    
    /** Orange View*/
    _orangeView.delegate        = self;
    _orangeView.topMargin       = 64;
    _orangeView.bottomMargin    = 64;
    _orangeView.leftMargin      = 50;
    _orangeView.rightMargin     = 50;
    
    /** Green View*/
    _greenView.delegate         = self;
    _greenView.rightMargin      = 50;
    _greenView.leftMargin       = 50;
    _greenView.isShadow         = YES;
    
    /** Black View*/
    _blackView.delegate         = self;
}

#pragma mark - ZoomingViewDelegate
- (void)touchView:(UIView *)view
{
    [self.view bringSubviewToFront:view];
}
@end
