//
//  NSDate+XZFunction.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (XZFunction)

- (BOOL)xz_isLaterThan:(NSDate *)date;
- (BOOL)xz_isEarlierThan:(NSDate *)date;

- (NSDate *)xz_addingYears:(NSInteger)years;
- (NSDate *)xz_subtractingYears:(NSInteger)years;
- (NSDate *)xz_addingMonths:(NSInteger)months;
- (NSDate *)xz_subtractingMonths:(NSInteger)months;
- (NSDate *)xz_addingDays:(NSInteger)days;
- (NSDate *)xz_subtractingDays:(NSInteger)days;
- (NSDate *)xz_addingHours:(NSInteger)hours;
- (NSDate *)xz_subtractingHours:(NSInteger)hours;
- (NSDate *)xz_addingMinutes:(NSInteger)minutes;
- (NSDate *)xz_subtractingMinutes:(NSInteger)minutes;
- (NSDate *)xz_addingSeconds:(NSInteger)seconds;
- (NSDate *)xz_subtractingSeconds:(NSInteger)seconds;

- (NSDate *)xz_setYear:(NSInteger)year;
- (NSDate *)xz_setMonth:(NSInteger)month;
- (NSDate *)xz_setDay:(NSInteger)day;
- (NSDate *)xz_setHour:(NSInteger)hour;
- (NSDate *)xz_setMinute:(NSInteger)minute;
- (NSDate *)xz_setSecond:(NSInteger)second;

@property (nonatomic, assign, readonly) NSInteger xz_numberOfDaysInCurrentMonth;
@property (nonatomic, assign, readonly) NSInteger xz_numberOfDaysInPreviousMonth;
@property (nonatomic, assign, readonly) NSInteger xz_numberOfDaysInNextMonth;
@end
