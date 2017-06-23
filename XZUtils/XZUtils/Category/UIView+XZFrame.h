//
//  UIView+XZFrame.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (XZFrame)

@property (nonatomic, assign) CGPoint xz_origin;
@property (nonatomic, assign) CGSize xz_size;

@property (nonatomic, assign) CGFloat xz_x;
@property (nonatomic, assign) CGFloat xz_y;

@property (nonatomic, assign) CGFloat xz_width;
@property (nonatomic, assign) CGFloat xz_height;

@property (nonatomic, assign) CGFloat xz_minX;
@property (nonatomic, assign) CGFloat xz_minY;

@property (nonatomic, assign) CGFloat xz_midX;
@property (nonatomic, assign) CGFloat xz_midY;

@property (nonatomic, assign) CGFloat xz_maxX;
@property (nonatomic, assign) CGFloat xz_maxY;

@end
