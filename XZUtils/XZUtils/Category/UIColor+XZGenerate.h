//
//  UIColor+XZGenerate.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (XZGenerate)
+ (UIColor *)xz_random;
+ (UIColor *)xz_r:(CGFloat)r g:(CGFloat)g b:(CGFloat)b a:(CGFloat)a;
+ (UIColor *)xz_hex:(NSString *)hexStr;
@end
