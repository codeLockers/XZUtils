//
//  NSString+XZSize.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSString+XZSize.h"
#import "XZUtils.h"

@implementation NSString (XZSize)
- (CGFloat)xz_heightWithFont:(UIFont *)font width:(CGFloat)width linespace:(CGFloat)linespace mode:(NSLineBreakMode)lineBrekMode {
    
    if ([XZUtils isEmptyString:self]) {
        return 0;
    }
    
    NSMutableParagraphStyle *paragraphStyle = ({
        
        NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
        [style setLineBreakMode:lineBrekMode];
        if (linespace != 0) {
            
            style = [[NSMutableParagraphStyle alloc] init];
            [style setLineSpacing:linespace];//调整行间距
        }
        style;
    });
    
    CGSize size = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:@{
                                               NSFontAttributeName:font,
                                               NSParagraphStyleAttributeName:paragraphStyle
                                               }
                                     context:nil].size;
    
    return size.height;
}

- (CGSize)xz_sizeWithFont:(UIFont *)font width:(CGFloat)width height:(CGFloat)height linespace:(CGFloat)linespace mode:(NSLineBreakMode)lineBrekMode {
    
    if ([XZUtils isEmptyString:self]) {
        return CGSizeZero;
    }
    
    NSMutableParagraphStyle *paragraphStyle = ({
        NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
        [style setLineBreakMode:lineBrekMode];
        if (linespace != 0) {
            
            style = [[NSMutableParagraphStyle alloc] init];
            [style setLineSpacing:linespace];//调整行间距
        }
        style;
    });
    
    CGSize size = [self boundingRectWithSize:CGSizeMake(width, height)
                                         options:NSStringDrawingUsesLineFragmentOrigin
                                      attributes:@{
                                                   NSFontAttributeName:font,
                                                   NSParagraphStyleAttributeName:paragraphStyle
                                                   }
                                         context:nil].size;
    return size;
}
@end
