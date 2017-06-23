//
//  NSDate+XZFunction.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSDate+XZFunction.h"
#import "NSDate+XZFormat.h"

@implementation NSDate (XZFunction)

- (BOOL)xz_isLaterThan:(NSDate *)date {
    return ([self compare:date] == NSOrderedDescending);
}

- (BOOL)xz_isEarlierThan:(NSDate *)date {
    return ([self compare:date] == NSOrderedAscending);
}

- (NSDate *)xz_addingYears:(NSInteger)years {
    if (years == 0)
        return self;
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setYear:years];
    NSDate *newDate = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:self options:0];
    return newDate;
}

- (NSDate *)xz_subtractingYears:(NSInteger)years {
    return [self xz_addingYears:-years];
}

- (NSDate *)xz_addingMonths:(NSInteger)months {
    if (months == 0)
        return self;
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setMonth:months];
    NSDate *newDate = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:self options:0];
    return newDate;
}

- (NSDate *)xz_subtractingMonths:(NSInteger)months {
    return [self xz_addingMonths:-months];
}

- (NSDate *)xz_addingDays:(NSInteger)days {
    if (days == 0)
        return self;
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setDay:days];
    NSDate *newDate = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:self options:0];
    return newDate;
}

- (NSDate *)xz_subtractingDays:(NSInteger)days {
    return [self xz_addingDays:-days];
}

- (NSDate *)xz_addingHours:(NSInteger)hours {
    if (hours == 0)
        return self;
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setHour:hours];
    NSDate *newDate = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:self options:0];
    return newDate;
}

- (NSDate *)xz_subtractingHours:(NSInteger)hours {
    return [self xz_addingHours:-hours];
}

- (NSDate *)xz_addingMinutes:(NSInteger)minutes {
    if (minutes == 0)
        return self;
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setMinute:minutes];
    NSDate *newDate = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:self options:0];
    return newDate;
}

- (NSDate *)xz_subtractingMinutes:(NSInteger)minutes {
    return [self xz_addingMinutes:-minutes];
}

- (NSDate *)xz_addingSeconds:(NSInteger)seconds {
    if (seconds == 0)
        return self;
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setSecond:seconds];
    NSDate *newDate = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:self options:0];
    return newDate;
}

- (NSDate *)xz_subtractingSeconds:(NSInteger)seconds {
    return [self xz_addingSeconds:-seconds];
}

- (NSDate *)xz_setValue:(NSInteger)value forUnit:(NSCalendarUnit)unit{
    value = value < 0 ? 0 : value;
    NSDateComponents *component = [self.xz_calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitSecond fromDate:self];
    [component setValue:value forComponent:unit];
    return [self.xz_calendar dateFromComponents:component];
    
}

- (NSDate *)xz_setYear:(NSInteger)year {
    return [self xz_setValue:year forUnit:NSCalendarUnitYear];
}

- (NSDate *)xz_setMonth:(NSInteger)month {
    return [self xz_setValue:month forUnit:NSCalendarUnitMonth];
}

- (NSDate *)xz_setDay:(NSInteger)day {
    return [self xz_setValue:day forUnit:NSCalendarUnitDay];
}

- (NSDate *)xz_setHour:(NSInteger)hour {
    return [self xz_setValue:hour forUnit:NSCalendarUnitHour];
}

- (NSDate *)xz_setMinute:(NSInteger)minute {
    return [self xz_setValue:minute forUnit:NSCalendarUnitMinute];
}

- (NSDate *)xz_setSecond:(NSInteger)second {
    return [self xz_setValue:second forUnit:NSCalendarUnitSecond];
}

- (NSInteger)xz_numberOfDaysInCurrentMonth {
    NSRange range = [self.xz_calendar rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:self];
    return range.length;
}

- (NSInteger)xz_numberOfDaysInPreviousMonth {
    return [[self xz_subtractingMonths:1] xz_numberOfDaysInCurrentMonth];
}

- (NSInteger)xz_numberOfDaysInNextMonth {
    return [[self xz_addingMonths:1] xz_numberOfDaysInCurrentMonth];
}
@end
