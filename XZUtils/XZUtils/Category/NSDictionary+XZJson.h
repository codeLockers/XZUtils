//
//  NSDictionary+XZJson.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/26.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (XZJson)

- (NSString *)xz_jsonString;
+ (NSDictionary *)xz_dictionaryFromJsonString:(NSString *)string;

@end
