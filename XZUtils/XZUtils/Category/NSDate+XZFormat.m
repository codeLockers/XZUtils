//
//  NSDate+XZFormat.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSDate+XZFormat.h"
//#import "XZUtils.h"

NSString * const XZ_DateFormat_Default = @"yyyy-MM-dd HH:mm:ss";

@implementation NSDate (XZFormat)

- (NSCalendar *)xz_calendar {
    return [NSCalendar currentCalendar];
}

- (NSString *)xz_stringForFormat:(NSString *)format {
//    if ([XZUtils isEmptyString:format]) {
//        format = XZ_DateFormat_Default;
//    }
    NSDateFormatter *dateFormat = [NSDateFormatter new];
    [dateFormat setDateFormat:format];
    return [dateFormat stringFromDate:self];
}

+ (NSDate *)xz_dateFromDateStr:(NSString *)dateStr forFormat:(NSString *)format {
//    if ([XZUtils isEmptyString:dateStr]) {
//        return nil;
//    }
//    if ([XZUtils isEmptyString:format]) {
//        format = XZ_DateFormat_Default;
//    }
    NSDateFormatter *dateFormat = [NSDateFormatter new];
    [dateFormat setDateFormat:format];
    return [dateFormat dateFromString:dateStr];
}
@end
