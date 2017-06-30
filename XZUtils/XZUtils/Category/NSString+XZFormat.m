//
//  NSString+XZFormat.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/30.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSString+XZFormat.h"

@implementation NSString (XZFormat)
+ (NSString *)xz_stringFromInt:(NSInteger)value {
    return [NSString stringWithFormat:@"%ld",(long)value];
}

+ (NSString *)xz_stringFromFloat:(CGFloat)value {
    return [NSString stringWithFormat:@"%f",value];
}

+ (NSString *)xz_stringFromBool:(BOOL)value {
    return value ? @"YES" : @"NO";
}

+ (NSString *)xz_stringFromPoint:(CGPoint)value {
    return NSStringFromCGPoint(value);
}

+ (NSString *)xz_stringFromSize:(CGSize)value {
    return NSStringFromCGSize(value);
}

+ (NSString *)xz_stringFromRect:(CGRect)value {
    return NSStringFromCGRect(value);
}
@end
