//
//  XZUtils.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XZUtils : NSObject
+ (BOOL)isEmptyString:(NSString *)string;
+ (BOOL)isEmptyArray:(NSArray *)array;
+ (BOOL)isEmptyDictionary:(NSDictionary *)dic;
@end
