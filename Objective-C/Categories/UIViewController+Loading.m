//
//  UIViewController+Loading.m
//  Collab-Writing
//
//  Created by Rajul Arora on 2014-10-31.
//  Copyright (c) 2014 Rajul Arora. All rights reserved.
//

#import "UIViewController+Loading.h"

@implementation UIViewController (Loading)

+ (UIViewController *)viewController:(NSString *)viewControllerName InStoryboard:(NSString *)storyboardName
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:viewControllerName];
}

@end
