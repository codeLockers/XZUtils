//
//  NSArray+XZJson.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/26.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (XZJson)

- (NSString *)jsonString;
+ (NSArray *)arrayFromJsonString:(NSString *)string;
@end
