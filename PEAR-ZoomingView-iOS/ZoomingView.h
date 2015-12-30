//
//  ZoomingView.h
//  ZoomingView
//
//  Created by hirokiumatani on 2015/12/30.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ZoomingViewDelegate <NSObject>
- (void)touchView:(UIView *)view;
@end
@interface ZoomingView : UIView
@property (nonatomic,assign) id <ZoomingViewDelegate> delegate;
@property (nonatomic,assign) NSInteger  topMargin;
@property (nonatomic,assign) NSInteger  bottomMargin;
@property (nonatomic,assign) NSInteger  leftMargin;
@property (nonatomic,assign) NSInteger  rightMargin;
@property (nonatomic,assign) BOOL       isShadow;
@end
