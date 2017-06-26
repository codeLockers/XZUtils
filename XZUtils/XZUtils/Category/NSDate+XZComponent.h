//
//  NSDate+XZComponent.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (XZComponent)

@property (nonatomic, assign, readonly) NSInteger xz_era;
@property (nonatomic, assign, readonly) NSInteger xz_year;
@property (nonatomic, assign, readonly) NSInteger xz_month;
@property (nonatomic, assign, readonly) NSInteger xz_day;
@property (nonatomic, assign, readonly) NSInteger xz_hour;
@property (nonatomic, assign, readonly) NSInteger xz_minute;
@property (nonatomic, assign, readonly) NSInteger xz_second;
@property (nonatomic, assign, readonly) NSInteger xz_weekday;
@property (nonatomic, assign, readonly) NSInteger xz_weekdayOrdinal;
@property (nonatomic, assign, readonly) NSInteger xz_quarter;
@property (nonatomic, assign, readonly) NSInteger xz_weekOfMonth;
@property (nonatomic, assign, readonly) NSInteger xz_weekOfYear;
@property (nonatomic, assign, readonly) NSInteger xz_yearForWeekOfYear;
@property (nonatomic, assign, readonly) NSInteger xz_nanosecond;
@property (nonatomic, assign, readonly) NSInteger xz_calendar;
@property (nonatomic, assign, readonly) NSInteger xz_timeZone;

@property (nonatomic, readonly) NSString * xz_chineseYear;
@property (nonatomic, readonly) NSString * xz_chineseMonth;
@property (nonatomic, readonly) NSString * xz_chineseDay;
@property (nonatomic, readonly) NSString * xz_chineseLongWeekday;
@property (nonatomic, readonly) NSString * xz_chineseShortWeekday;

@end
