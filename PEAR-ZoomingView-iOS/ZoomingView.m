//
//  ZoomingView.m
//  ZoomingView
//
//  Created by hirokiumatani on 2015/12/30.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import "ZoomingView.h"
#import <QuartzCore/QuartzCore.h>
@interface ZoomingView()
@property (nonatomic,assign) BOOL isZoom;
@property (nonatomic,assign) CGRect defaultRect;
@end

@implementation ZoomingView


#pragma mark - shadow
- (void)setIsShadow:(BOOL)isShadow
{
    _isShadow = isShadow;
    if (!_isShadow)
    {
        [self noShadow];
    }
    else
    {
        [self showShadow];
    }
}

- (void)noShadow
{
    self.layer.shadowOpacity = 0.0;
    self.layer.shadowOffset = CGSizeMake(0,0);
}
- (void)showShadow
{
    if (_isShadow)
    {
        self.layer.shadowOpacity = 0.8;
        self.layer.shadowOffset = CGSizeMake(0,8);
    }
}
- (void)hideShadow
{
    if (_isShadow)
    {
        self.layer.shadowOpacity = 0.5;
        self.layer.shadowOffset = CGSizeMake(0,5);
    }
}

#pragma mark - zoom
- (void)defaultView
{
    [UIView animateWithDuration:0.6
                     animations:^
     {
         self.frame = CGRectMake(_defaultRect.origin.x,
                                 _defaultRect.origin.y,
                                 _defaultRect.size.width,
                                 _defaultRect.size.height);
     }];
     _isZoom = NO;
}

- (void)zoomingView
{
    _defaultRect = self.frame;
    [UIView animateWithDuration:0.6
                     animations:^
     {
         self.frame = CGRectMake(0+_leftMargin,
                                 0+_topMargin,
                                 [UIScreen mainScreen].bounds.size.width
                                 -_leftMargin
                                 -_rightMargin,
                                 [UIScreen mainScreen].bounds.size.height
                                 -_topMargin
                                 -_bottomMargin);
     }];
     _isZoom = YES;
}
#pragma mark - touch
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self hideShadow];
    [_delegate touchView:self];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self showShadow];
    if (_isZoom)
    {
        [self defaultView];
    }
    else
    {
        [self zoomingView];
        
    }
}
@end
