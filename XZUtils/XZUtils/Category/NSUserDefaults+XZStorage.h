//
//  NSUserDefaults+XZStorage.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/26.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (XZStorage)

+ (BOOL)xz_setObject:(id)object forKey:(NSString *)key;
+ (id)xz_objectForKey:(NSString *)key;

+ (BOOL)xz_setURL:(NSURL *)url forKey:(NSString *)key;
+ (NSURL *)xz_urlForKey:(NSString *)key;

+ (BOOL)xz_setBool:(BOOL)value forKey:(NSString *)key;
+ (BOOL)xz_boolForKey:(NSString *)key;

+ (BOOL)xz_setDouble:(double)value forKey:(NSString *)key;
+ (double)xz_doubleForKey:(NSString *)key;

+ (BOOL)xz_setFloat:(float)value forKey:(NSString *)key;
+ (float)xz_floatForKey:(NSString *)key;

+ (BOOL)xz_setInteger:(NSInteger)value forKey:(NSString *)key;
+ (NSInteger)xz_integerForKey:(NSString *)key;

+ (NSArray *)xz_arrayForKey:(NSString *)key;
+ (NSDictionary *)xz_dictionaryForKey:(NSString *)key;
+ (NSData *)xz_dataForKey:(NSString *)key;
+ (NSString*)xz_stringForKey:(NSString *)key;

+ (BOOL)xz_removeObjectForKey:(NSString *)key;
@end






