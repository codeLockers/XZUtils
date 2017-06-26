//
//  NSBundle+XZApp.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/26.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSBundle (XZApp)
@property (nonatomic, readonly) NSString *xz_appName;
@property (nonatomic, readonly) NSString *xz_appVersion;
@property (nonatomic, readonly) NSString *xz_appBuildVersion;
@property (nonatomic, readonly) NSString *xz_appBundleIdentifier;
@end
