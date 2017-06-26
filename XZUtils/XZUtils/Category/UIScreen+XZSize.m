//
//  UIScreen+XZSize.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/26.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UIScreen+XZSize.h"
#import "UIDevice+XZInfo.h"

@implementation UIScreen (XZSize)

- (CGSize)xz_size {
    return [UIScreen mainScreen].bounds.size;
}

- (CGFloat)xz_width {
    return [UIScreen mainScreen].xz_size.width;
}

- (CGFloat)xz_height {
    return [UIScreen mainScreen].xz_size.height;
}

- (BOOL)xz_isInch_3_5 {
    NSString *platform = [UIDevice currentDevice].xz_platform;
    if ([platform containsString:@"iPhone 4"]) {
        return YES;
    }
    return NO;
}

- (BOOL)xz_isInch_4_0 {
    NSString *platform = [UIDevice currentDevice].xz_platform;
    if ([platform containsString:@"iPhone 5"] || [platform containsString:@"iPhone SE"]) {
        return YES;
    }
    return NO;
}

- (BOOL)xz_isInch_4_7 {
    NSString *platform = [UIDevice currentDevice].xz_platform;
    BOOL condition1 = [platform containsString:@"iPhone 6"];
    BOOL condition2 = [platform containsString:@"iPhone 7"];
    BOOL condition3 = [platform containsString:@"Plus"];
    
    if ((condition1 || condition2) && !condition3) {
        return YES;
    }
    return NO;
}

- (BOOL)xz_isInch_5_5 {
    NSString *platform = [UIDevice currentDevice].xz_platform;
    if ([platform containsString:@"Plus"]) {
        return YES;
    }
    return NO;
}

- (BOOL)xz_isZoomModel {
    BOOL condition1 = [self xz_isInch_4_7] && ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640,1136), [[UIScreen mainScreen] currentMode].size) : NO);
    BOOL condition2 = [self xz_isInch_5_5] && ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125,1125), [[UIScreen mainScreen] currentMode].size) : NO);
    return condition1 || condition2;
}
@end
