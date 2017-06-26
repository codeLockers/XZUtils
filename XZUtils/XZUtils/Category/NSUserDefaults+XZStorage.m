//
//  NSUserDefaults+XZStorage.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/26.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSUserDefaults+XZStorage.h"
//#import "XZUtils.h"

@implementation NSUserDefaults (XZStorage)

+ (BOOL)xz_setObject:(id)object forKey:(NSString *)key {
//    if (!object || [XZUtils isEmptyString:key]) {
//        return NO;
//    }
    [[NSUserDefaults standardUserDefaults] setObject:object forKey:key];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (id)xz_objectForKey:(NSString *)key {
//    if ([XZUtils isEmptyString:key]) {
//        return nil;
//    }
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

+ (BOOL)xz_setURL:(NSURL *)url forKey:(NSString *)key {
//    if (!url || [XZUtils isEmptyString:key]) {
//        return NO;
//    }
    [[NSUserDefaults standardUserDefaults] setURL:url forKey:key];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSURL *)xz_urlForKey:(NSString *)key {
//    if ([XZUtils isEmptyString:key]) {
//        return nil;
//    }
    return [[NSUserDefaults standardUserDefaults] URLForKey:key];
}

+ (BOOL)xz_setBool:(BOOL)value forKey:(NSString *)key {
//    if ([XZUtils isEmptyString:key]) {
//        return NO;
//    }
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:key];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (BOOL)xz_boolForKey:(NSString *)key {
//    if ([XZUtils isEmptyString:key]) {
//        return NO;
//    }
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}

+ (BOOL)xz_setDouble:(double)value forKey:(NSString *)key {
//    if ([XZUtils isEmptyString:key]) {
//        return NO;
//    }
    [[NSUserDefaults standardUserDefaults] setDouble:value forKey:key];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (double)xz_doubleForKey:(NSString *)key {
//    if ([XZUtils isEmptyString:key]) {
//        return 0;
//    }
    return [[NSUserDefaults standardUserDefaults] doubleForKey:key];
}

+ (BOOL)xz_setFloat:(float)value forKey:(NSString *)key {
//    if ([XZUtils isEmptyString:key]) {
//        return 0;
//    }
    [[NSUserDefaults standardUserDefaults] setFloat:value forKey:key];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (float)xz_floatForKey:(NSString *)key {
//    if ([XZUtils isEmptyString:key]) {
//        return 0;
//    }
    return [[NSUserDefaults standardUserDefaults] floatForKey:key];
}

+ (BOOL)xz_setInteger:(NSInteger)value forKey:(NSString *)key {
//    if ([XZUtils isEmptyString:key]) {
//        return NO;
//    }
    [[NSUserDefaults standardUserDefaults] setInteger:value forKey:key];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSInteger)xz_integerForKey:(NSString *)key {
//    if ([XZUtils isEmptyString:key]) {
//        return NO;
//    }
    return [[NSUserDefaults standardUserDefaults] integerForKey:key];
}

+ (NSArray *)xz_arrayForKey:(NSString *)key {
//    if ([XZUtils isEmptyString:key]) {
//        return nil;
//    }
    return [[NSUserDefaults standardUserDefaults] arrayForKey:key];
}

+ (NSDictionary *)xz_dictionaryForKey:(NSString *)key {
//    if ([XZUtils isEmptyString:key]) {
//        return nil;
//    }
    return [[NSUserDefaults standardUserDefaults] dictionaryForKey:key];
}

+ (NSData *)xz_dataForKey:(NSString *)key {
//    if ([XZUtils isEmptyString:key]) {
//        return nil;
//    }
    return [[NSUserDefaults standardUserDefaults] dataForKey:key];
}

+ (NSString *)xz_stringForKey:(NSString *)key {
//    if ([XZUtils isEmptyString:key]) {
//        return nil;
//    }
    return [[NSUserDefaults standardUserDefaults] stringForKey:key];
}

+ (BOOL)xz_removeObjectForKey:(NSString *)key {
//    if ([XZUtils isEmptyString:key]) {
//        return NO;
//    }
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}
@end
