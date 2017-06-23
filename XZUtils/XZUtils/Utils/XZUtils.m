//
//  XZUtils.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "XZUtils.h"

@implementation XZUtils
+ (BOOL)isEmptyString:(NSString *)string {
    if (!string || ![string isKindOfClass:[NSString class]] || string.length == 0) {
        return YES;
    }
    return NO;
}
+ (BOOL)isEmptyArray:(NSArray *)array {
    if (!array || ![array isKindOfClass:[NSArray class]] || array.count == 0) {
        return YES;
    }
    return NO;
}
+ (BOOL)isEmptyDictionary:(NSDictionary *)dic {
    if (!dic || ![dic isKindOfClass:[NSDictionary class]] || dic.count == 0) {
        return YES;
    }
    return NO;
}
@end
