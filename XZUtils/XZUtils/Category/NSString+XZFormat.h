//
//  NSString+XZFormat.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/30.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (XZFormat)
+ (NSString *)xz_stringFromInt:(NSInteger)value;
+ (NSString *)xz_stringFromFloat:(CGFloat)value;
+ (NSString *)xz_stringFromBool:(BOOL)value;
+ (NSString *)xz_stringFromPoint:(CGPoint)value;
+ (NSString *)xz_stringFromSize:(CGSize)value;
+ (NSString *)xz_stringFromRect:(CGRect)value;
@end
