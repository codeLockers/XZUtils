//
//  XZMacros.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#ifndef XZMacros_h
#define XZMacros_h

// gcd sync
#define xz_dispatch_main_sync_safe(block)\
if (block == nil) {\
    NSLog(@"block is nil");\
    return;\
}\
if ([NSThread isMainThread]) {\
block();\
} else {\
dispatch_sync(dispatch_get_main_queue(), block);\
}

// gcd async
#define xz_dispatch_main_async_safe(block)\
if (block == nil) {\
NSLog(@"block is nil");\
return;\
}\
if ([NSThread isMainThread]) {\
block();\
} else {\
dispatch_async(dispatch_get_main_queue(), block);\
}

// safe block
#define xz_block_safe(block)\
if (block != nil) {\
block();\
} else {\
    NSLog(@"block is nil");\
}

#endif /* XZMacros_h */
