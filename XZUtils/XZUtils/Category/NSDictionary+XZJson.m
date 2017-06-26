//
//  NSDictionary+XZJson.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/26.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSDictionary+XZJson.h"
#import "XZUtils.h"

@implementation NSDictionary (XZJson)

- (NSString *)xz_jsonString{
    NSData *data = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil];
    NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return string;
}

+ (NSDictionary *)xz_dictionaryFromJsonString:(NSString *)string{

    if ([XZUtils isEmptyString:string]) return nil;
    NSData *jsonData = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    return dic;
}
@end
