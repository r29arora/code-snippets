//
//  RASimpleLayout.m
//  testInterstitial
//
//  Created by Rajul Arora on 2014-09-29.
//  Copyright (c) 2014 Rajul Arora. All rights reserved.
//

#import "RASimpleLayout.h"

@implementation RASimpleLayout

+ (void) checkValidChildView:(UIView *)view ofParentView:(UIView *)superView
{
    if ([view superview] != superView)
    {
        [NSException raise:NSInvalidArgumentException format:@"Child View must be a direct descendant of Super View"];
    }
}

+ (void) CenterView:(UIView *)view inParentView:(UIView *)superView
{
    [self checkValidChildView:view ofParentView:superView];
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                         attribute:NSLayoutAttributeCenterX
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:superView
                                                                         attribute:NSLayoutAttributeCenterX
                                                                        multiplier:1.0f
                                                                          constant:0.0f];
    
    [superView addConstraint:centerXConstraint];
    
    NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                         attribute:NSLayoutAttributeCenterY
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:superView
                                                                         attribute:NSLayoutAttributeCenterY
                                                                        multiplier:1.0f
                                                                          constant:0.0f];
    [superView addConstraint:centerYConstraint];
    
}

+ (void) ResizeView:(UIView *)view toParentView:(UIView *)superView
{
    [self checkValidChildView:view ofParentView:superView];
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                       attribute:NSLayoutAttributeWidth
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:superView
                                                                       attribute:NSLayoutAttributeWidth
                                                                      multiplier:1.0f constant:0.0f];
    [superView addConstraint:widthConstraint];
    
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                        attribute:NSLayoutAttributeHeight
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:superView
                                                                        attribute:NSLayoutAttributeHeight
                                                                       multiplier:1.0f
                                                                         constant:0.0f];
    
    [superView addConstraint:heightConstraint];
}

+ (void) AddFixedWidthConstraintOnView:(UIView *)view withSize:(CGFloat)size
{
    
    NSLayoutConstraint *fixedWidth = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeWidth
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:nil
                                                                  attribute:NSLayoutAttributeWidth
                                                                 multiplier:1.0f
                                                                   constant:size];

    [view addConstraint:fixedWidth];
}

+ (void) AddFixedHeightConstraintOnView:(UIView *)view withSize:(CGFloat)size
{
    NSLayoutConstraint *fixedHeight = [NSLayoutConstraint constraintWithItem:view
                                                                   attribute:NSLayoutAttributeHeight
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:nil
                                                                   attribute:NSLayoutAttributeHeight
                                                                  multiplier:1.0f
                                                                    constant:size];
    
    [view addConstraint:fixedHeight];
}

+ (void) AddTopLeftCornerConstraintOnView:(UIView *)view toParentView:(UIView *)superView withTopSpacing:(CGFloat)topSpacing andLeftSpacing:(CGFloat)leftSpacing
{
    [self checkValidChildView:view ofParentView:superView];
    
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                     attribute:NSLayoutAttributeTop
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:superView
                                                                     attribute:NSLayoutAttributeTop
                                                                    multiplier:1.0f
                                                                      constant:topSpacing];
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                      attribute:NSLayoutAttributeLeft
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:superView
                                                                      attribute:NSLayoutAttributeLeft
                                                                     multiplier:1.0f
                                                                       constant:leftSpacing];
    [superView addConstraint:topConstraint];
    [superView addConstraint:leftConstraint];
}

@end
