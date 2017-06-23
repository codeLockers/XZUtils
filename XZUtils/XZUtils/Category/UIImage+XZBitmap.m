//
//  UIImage+XZBitmap.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UIImage+XZBitmap.h"

@implementation UIImage (XZBitmap)

- (UIImage *)xz_imageAtRect:(CGRect)rect {
    
    CGImageRef imageRef = self.CGImage;
    CGImageRef newImageRef = CGImageCreateWithImageInRect(imageRef, rect);
    UIImage *image = [UIImage imageWithCGImage:newImageRef];
    CGImageRelease(newImageRef);
    return image;
}

- (UIImage *)xz_imageAspectToMinSize:(CGSize)targetSize {
    
    if (CGSizeEqualToSize(self.size, targetSize) || CGSizeEqualToSize(targetSize, CGSizeZero))
        return self;
    
    CGFloat xFactor = targetSize.width/self.size.width;
    CGFloat yFactor = targetSize.height/self.size.height;
    
    CGFloat scaleFactor = xFactor>yFactor ? xFactor : yFactor;
    
    CGFloat scaleWidth = self.size.width * scaleFactor;
    CGFloat scaleHeight = self.size.height * scaleFactor;
    
    CGPoint anchorPoint = CGPointZero;
    
    if (xFactor > yFactor)
        anchorPoint.y = (targetSize.height - scaleHeight)/2.0;
    if (xFactor < yFactor)
        anchorPoint.x = (targetSize.width - scaleWidth)/2.0;
    
    UIGraphicsBeginImageContextWithOptions(targetSize, YES, [UIScreen mainScreen].scale);
    CGRect anchorRect = CGRectZero;
    anchorRect.origin = anchorPoint;
    anchorRect.size.width = scaleWidth;
    anchorRect.size.height = scaleHeight;
    [self drawInRect:anchorRect];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;

}

- (UIImage *)xz_imageAspectToMaxSize:(CGSize)targetSize {
    
    if (CGSizeEqualToSize(self.size, targetSize) || CGSizeEqualToSize(targetSize, CGSizeZero))
        return self;
    
    CGFloat xFactor = targetSize.width/self.size.width;
    CGFloat yFactor = targetSize.height/self.size.height;
    
    CGFloat scaleFactor = xFactor<yFactor ? xFactor : yFactor;
    
    CGFloat scaleWidth = self.size.width * scaleFactor;
    CGFloat scaleHeight = self.size.height * scaleFactor;
    
    CGPoint anchorPoint = CGPointZero;
    
    if (xFactor < yFactor)
        anchorPoint.y = (targetSize.height - scaleHeight)/2.0;
    if (xFactor > yFactor)
        anchorPoint.x = (targetSize.width - scaleWidth)/2.0;
    
    UIGraphicsBeginImageContextWithOptions(targetSize, NO, [UIScreen mainScreen].scale);
    CGRect anchorRect = CGRectZero;
    anchorRect.origin = anchorPoint;
    anchorRect.size.width = scaleWidth;
    anchorRect.size.height = scaleHeight;
    [self drawInRect:anchorRect];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)xz_imageFromColor:(UIColor *)color {
    
    color = color ? : [UIColor whiteColor];
    CGRect rect = CGRectMake(0, 0, 1, 1);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [UIScreen mainScreen].scale);
    [color setFill];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
