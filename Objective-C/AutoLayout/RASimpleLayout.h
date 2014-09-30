//
//  RASimpleLayout.h
//  testInterstitial
//
//  Created by Rajul Arora on 2014-09-29.
//  Copyright (c) 2014 Rajul Arora. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RASimpleLayout : NSLayoutConstraint

+ (void) CenterView:(UIView *)view inParentView:(UIView *)superView;
+ (void) ResizeView:(UIView *)view toParentView:(UIView *)superView;
+ (void) AddFixedWidthConstraintOnView:(UIView *)view withSize:(CGFloat)size;
+ (void) AddFixedHeightConstraintOnView:(UIView *)view withSize:(CGFloat)size;

//Constrains View to Top Left Corner of Super View
+ (void) AddTopLeftCornerConstraintOnView:(UIView *)view toParentView:(UIView *)superView withTopSpacing:(CGFloat)topSpacing andLeftSpacing:(CGFloat)leftSpacing;
@end
