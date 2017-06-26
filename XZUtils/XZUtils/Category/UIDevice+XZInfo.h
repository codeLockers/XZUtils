//
//  UIDevice+XZInfo.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/26.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (XZInfo)

@property (nonatomic, readonly) NSString *xz_platform;
@property (nonatomic, readonly) CGFloat xz_systemVersion;
@end
