//
//  UIScreen+XZSize.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/26.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (XZSize)

@property (nonatomic, readonly) CGFloat xz_width;
@property (nonatomic, readonly) CGFloat xz_height;
@property (nonatomic, readonly) CGSize xz_size;

//手机屏幕尺寸与分辨率无关，仅在真机上适用
@property (nonatomic, readonly) BOOL xz_isInch_3_5;
@property (nonatomic, readonly) BOOL xz_isInch_4_0;
@property (nonatomic, readonly) BOOL xz_isInch_4_7;
@property (nonatomic, readonly) BOOL xz_isInch_5_5;

/** 是否是放大模式，仅在真机上适用*/
@property (nonatomic, readonly) BOOL xz_isZoomModel;

@end
