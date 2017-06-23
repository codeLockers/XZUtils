//
//  UIImage+XZBitmap.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (XZBitmap)

- (UIImage *)xz_imageAtRect:(CGRect)rect;

/**
 *  保持图片比例,短边＝targerSize,另外一边可能超出
 *
 *  @param targetSize 目标尺寸
 *
 *  @return New Image
 */
- (UIImage *)xz_imageAspectToMinSize:(CGSize)targetSize;

/**
 *  保持图片比例,长边＝targerSize,另外一边可能小于targetSize
 *
 *  @param targetSize 目标尺寸
 *
 *  @return New Image
 */
- (UIImage *)xz_imageAspectToMaxSize:(CGSize)targetSize;

/**
 *  获得一张纯色的图片
 *
 *  @param color 图片颜色
 *
 *  @return UIImage
 */
+ (UIImage *)xz_imageFromColor:(UIColor *)color;
@end
