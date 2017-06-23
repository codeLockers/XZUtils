//
//  UINavigationController+XZNavigationBar.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (XZNavigationBar)

- (void)xz_setTitleColor:(UIColor *)color font:(UIFont *)font;
- (void)xz_setBackItemTitle:(NSString *)title viewController:(UIViewController *)viewController;
- (void)xz_setRightItem:(UIBarButtonSystemItem)systemType delegate:(UIViewController *)viewController action:(SEL)method;

@end
