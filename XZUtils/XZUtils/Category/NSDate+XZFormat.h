//
//  NSDate+XZFormat.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString * const XZ_DateFormat_Default;

@interface NSDate (XZFormat)

@property (nonatomic, readonly) NSCalendar * xz_calendar;

- (NSString *)xz_stringForFormat:(NSString *)format;
+ (NSDate *)xz_dateFromDateStr:(NSString *)dateStr forFormat:(NSString *)format;


@end
