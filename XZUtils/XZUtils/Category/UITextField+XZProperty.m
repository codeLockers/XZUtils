//
//  UITextField+XZProperty.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/26.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UITextField+XZProperty.h"

@implementation UITextField (XZProperty)
- (void)setPlaceHolderColor:(UIColor *)placeHolderColor {
    [self setValue:placeHolderColor forKeyPath:@"placeholderLabel.textColor"];
}

- (UIColor *)placeHolderColor {
    return [self valueForKeyPath:@"placeholderLabel.textColor"];
}
@end
