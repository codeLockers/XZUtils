//
//  UIView+XZFrame.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UIView+XZFrame.h"

@implementation UIView (XZFrame)

- (void)setXz_origin:(CGPoint)xz_origin {
    CGRect rect = self.frame;
    rect.origin = xz_origin;
    self.frame = rect;
}

- (CGPoint)xz_origin{
    return self.frame.origin;
}

- (void)setXz_size:(CGSize)xz_size{
    CGRect rect = self.frame;
    rect.size = xz_size;
    self.frame = rect;
}

- (CGSize)xz_size{
    return self.frame.size;
}

- (void)setXz_x:(CGFloat)Xz_x{
    
    CGRect frame = self.frame;
    frame.origin.x = Xz_x;
    self.frame = frame;
}

- (CGFloat)xz_x{
    return self.frame.origin.x;
}

- (void)setXz_y:(CGFloat)xz_y{
    CGRect frame = self.frame;
    frame.origin.y = xz_y;
    self.frame = frame;
}

- (CGFloat)xz_y{
    return self.frame.origin.y;
}

- (void)setXz_width:(CGFloat)xz_width{
    CGRect frame = self.frame;
    frame.size.width = xz_width;
    self.frame = frame;
}

- (CGFloat)xz_width{
    return self.frame.size.width;
}

- (void)setXz_height:(CGFloat)xz_height{
    CGRect frame = self.frame;
    frame.size.height = xz_height;
    self.frame = frame;
}

- (CGFloat)xz_height{
    return self.frame.size.height;
}

- (void)setXz_minX:(CGFloat)xz_minX{
    CGRect rect = self.frame;
    rect.origin.x = xz_minX;
    self.frame = rect;
}

- (CGFloat)xz_minX{
    return self.frame.origin.x;
}

- (void)setXz_minY:(CGFloat)xz_minY{
    CGRect rect = self.frame;
    rect.origin.y = xz_minY;
    self.frame = rect;
}

- (CGFloat)xz_minY{
    return self.frame.origin.y;
}

- (void)setXz_midX:(CGFloat)xz_midX{
    self.center = CGPointMake(xz_midX, self.center.y);
}

- (CGFloat)xz_midX{
    return self.center.x;
}

- (void)setXz_midY:(CGFloat)xz_midY{
    self.center = CGPointMake(self.center.x, xz_midY);
}

- (CGFloat)xz_midY{
    return self.center.y;
}

- (void)setXz_maxX:(CGFloat)xz_maxX{
    CGRect rect = self.frame;
    rect.origin.x = xz_maxX - self.xz_width;
    self.frame = rect;
}

- (CGFloat)xz_maxX{
    return self.xz_x + self.xz_width;
}

- (void)setXz_maxY:(CGFloat)xz_maxY{
    CGRect rect = self.frame;
    rect.origin.y = xz_maxY - self.xz_height;
    self.frame = rect;
}

- (CGFloat)xz_maxY{
    return self.xz_y + self.xz_height;
}

@end
