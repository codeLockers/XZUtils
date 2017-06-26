//
//  NSDate+XZComponent.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSDate+XZComponent.h"
#import "NSDate+XZFormat.h"

@implementation NSDate (XZComponent)

- (NSInteger)xz_era {
    return [self.xz_calendar component:NSCalendarUnitEra fromDate:self];
}

- (NSInteger)xz_year {
    return [self.xz_calendar component:NSCalendarUnitYear fromDate:self];
}

- (NSInteger)xz_month {
    return [self.xz_calendar component:NSCalendarUnitMonth fromDate:self];
}

- (NSInteger)xz_day {
    return [self.xz_calendar component:NSCalendarUnitDay fromDate:self];
}

- (NSInteger)xz_hour {
    return [self.xz_calendar component:NSCalendarUnitHour fromDate:self];
}

- (NSInteger)xz_minute {
    return [self.xz_calendar component:NSCalendarUnitMinute fromDate:self];
}

- (NSInteger)xz_second {
    return [self.xz_calendar component:NSCalendarUnitSecond fromDate:self];
}

- (NSInteger)xz_weekday {
    return [self.xz_calendar component:NSCalendarUnitWeekday fromDate:self];
}

- (NSInteger)xz_weekdayOrdinal {
    return [self.xz_calendar component:NSCalendarUnitWeekdayOrdinal fromDate:self];
}

- (NSInteger)xz_quarter {
    return [self.xz_calendar component:NSCalendarUnitQuarter fromDate:self];
}

- (NSInteger)xz_weekOfMonth {
    return [self.xz_calendar component:NSCalendarUnitWeekOfMonth fromDate:self];
}

- (NSInteger)xz_weekOfYear {
    return [self.xz_calendar component:NSCalendarUnitWeekOfYear fromDate:self];
}

- (NSInteger)xz_yearForWeekOfYear {
    return [self.xz_calendar component:NSCalendarUnitYearForWeekOfYear fromDate:self];
}

- (NSInteger)xz_nanosecond {
    return [self.xz_calendar component:NSCalendarUnitNanosecond fromDate:self];
}

- (NSInteger)xz_calendar {
    return [self.xz_calendar component:NSCalendarUnitCalendar fromDate:self];
}

- (NSInteger)xz_timeZone {
    return [self.xz_calendar component:NSCalendarUnitTimeZone fromDate:self];
}

- (NSString *)xz_chineseYear {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierChinese];
    NSDateComponents *components = [calendar components:NSCalendarUnitYear fromDate:self];
    NSArray *chineseYears = @[@"甲子",@"乙丑",@"丙寅",@"丁卯",@"戊辰",@"己巳",@"庚午",@"辛未",@"壬申",@"癸酉",@"甲戌",@"乙亥",@"丙子",@"丁丑",@"戊寅",@"己卯",@"庚辰",@"辛己",@"壬午",@"癸未",@"甲申",@"乙酉",@"丙戌",@"丁亥",@"戊子",@"己丑",@"庚寅",@"辛卯",@"壬辰",@"癸巳",@"甲午",@"乙未",@"丙申",@"丁酉",@"戊戌",@"己亥",@"庚子",@"辛丑",@"壬寅",@"癸丑",@"甲辰",@"乙巳",@"丙午",@"丁未",@"戊申",@"己酉",@"庚戌",@"辛亥",@"壬子",@"癸丑",@"甲寅",@"乙卯",@"丙辰",@"丁巳",@"戊午",@"己未",@"庚申",@"辛酉",@"壬戌",@"癸亥"];
    return chineseYears[components.year - 1];
}

- (NSString *)xz_chineseMonth {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierChinese];
    NSDateComponents *components = [calendar components:NSCalendarUnitMonth fromDate:self];
    NSArray *chineseMonths = @[@"正月", @"二月", @"三月", @"四月", @"五月", @"六月", @"七月", @"八月",@"九月", @"十月", @"冬月", @"腊月"];
    return chineseMonths[components.month - 1];
}

- (NSString *)xz_chineseDay {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierChinese];
    NSDateComponents *components = [calendar components:NSCalendarUnitDay fromDate:self];
    NSArray *chineseDays = @[@"初一", @"初二", @"初三", @"初四", @"初五", @"初六", @"初七", @"初八", @"初九", @"初十",@"十一", @"十二", @"十三", @"十四", @"十五", @"十六", @"十七", @"十八", @"十九", @"二十", @"廿一", @"廿二", @"廿三", @"廿四", @"廿五", @"廿六", @"廿七", @"廿八", @"廿九", @"三十"];
    return chineseDays[components.day - 1];
}

- (NSString *)xz_chineseLongWeekday {
    NSArray *chineseLongWeekday = @[@"星期日",@"星期一",@"星期二",@"星期三",@"星期四",@"星期五",@"星期六"];
    return chineseLongWeekday[self.xz_weekday - 1];
}

- (NSString *)xz_chineseShortWeekday {
    NSArray *chineseShortWeekday = @[@"周日",@"周一",@"周二",@"周三",@"周四",@"周五",@"周六"];
    return chineseShortWeekday[self.xz_weekday - 1];
}

@end
