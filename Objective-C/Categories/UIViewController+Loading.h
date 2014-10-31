//
//  UIViewController+Loading.h
//  Collab-Writing
//
//  Created by Rajul Arora on 2014-10-31.
//  Copyright (c) 2014 Rajul Arora. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Loading)
+ (UIViewController *)viewController:(NSString *)viewControllerName InStoryboard:(NSString *)storyboardName;
@end
