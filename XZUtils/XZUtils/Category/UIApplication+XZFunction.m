//
//  UIApplication+XZFunction.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/30.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UIApplication+XZFunction.h"

@implementation UIApplication (XZFunction)
- (void)xz_hideKeyboard {
    [self sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}
@end
