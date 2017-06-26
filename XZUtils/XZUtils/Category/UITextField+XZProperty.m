//
//  UITextField+XZProperty.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/26.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UITextField+XZProperty.h"

@implementation UITextField (XZProperty)
- (void)setXz_placeHolderColor:(UIColor *)xz_placeHolderColor {
    [self setValue:xz_placeHolderColor forKeyPath:@"placeholderLabel.textColor"];
}

- (UIColor *)xz_placeHolderColor {
    return [self valueForKeyPath:@"placeholderLabel.textColor"];
}
@end
