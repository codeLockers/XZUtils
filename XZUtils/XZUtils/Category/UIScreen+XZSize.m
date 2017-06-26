//
//  UIScreen+XZSize.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/26.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UIScreen+XZSize.h"

@implementation UIScreen (XZSize)

+ (CGFloat)xz_width {
    return [UIScreen xz_size].width;
}

+ (CGFloat)xz_height {
    return [UIScreen xz_size].height;
}

+ (CGSize)xz_size {
    return [UIScreen mainScreen].bounds.size;
}

@end
