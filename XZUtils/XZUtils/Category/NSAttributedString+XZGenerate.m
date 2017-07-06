//
//  NSAttributedString+XZGenerate.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/26.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSAttributedString+XZGenerate.h"
@implementation NSAttributedString (XZGenerate)

- (NSAttributedString *)xz_setColor:(UIColor *)color inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSForegroundColorAttributeName value:color range:range];
    return [string copy];
}

- (NSAttributedString *)xz_setFont:(UIFont *)font inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSFontAttributeName value:font range:range];
    return [string copy];
}

- (NSAttributedString *)xz_setBackgroundColor:(UIColor *)color inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSBackgroundColorAttributeName value:color range:range];
    return [string copy];
}

- (NSAttributedString *)xz_setStrokeColor:(UIColor *)color strokeWidth:(CGFloat)width inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSStrokeColorAttributeName value:color range:range];
    [string addAttribute:NSStrokeWidthAttributeName value:[NSNumber numberWithFloat:width] range:range];
    return [string copy];
}

- (NSAttributedString *)xz_setShadow:(NSShadow *)shadow inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSShadowAttributeName value:shadow range:range];
    return [string copy];
}

- (NSAttributedString *)xz_setDeleteLine:(NSUnderlineStyle)lineStyle color:(UIColor *)color inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInteger:lineStyle] range:range];
    [string addAttribute:NSStrikethroughColorAttributeName value:color range:range];
    return [string copy];
    
}

- (NSAttributedString *)xz_setUnderLine:(NSUnderlineStyle)lineStyle color:(UIColor *)color inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:lineStyle] range:range];
    [string addAttribute:NSUnderlineColorAttributeName value:color range:range];
    return [string copy];
}
- (NSAttributedString *)xz_setKern:(CGFloat)kern inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSKernAttributeName value:[NSNumber numberWithFloat:kern] range:range];
    return [string copy];
}

- (NSAttributedString *)xz_setParagraphStyle:(NSParagraphStyle *)paragraphStyle inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
    return [string copy];
}

- (NSAttributedString *)xz_setLinespace:(CGFloat)linespace inRange:(NSRange)range {
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    style.lineSpacing = linespace;
    return [self xz_setParagraphStyle:style inRange:range];
}

- (NSAttributedString *)xz_setEffect:(NSString *)effect inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSTextEffectAttributeName value:effect range:range];
    return [string copy];
}

- (NSAttributedString *)xz_setLigature:(BOOL)isLigature inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSLigatureAttributeName value:[NSNumber numberWithInteger:isLigature] range:range];
    return [string copy];
}

- (NSAttributedString *)xz_setObliqueness:(CGFloat)obliqueness inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSObliquenessAttributeName value:[NSNumber numberWithFloat:obliqueness] range:range];
    return [string copy];
}

- (NSAttributedString *)xz_setBaseLineOffset:(CGFloat)offset inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSBaselineOffsetAttributeName value:[NSNumber numberWithFloat:offset] range:range];
    return [string copy];
}

- (NSAttributedString *)xz_setExpansion:(CGFloat)expansion inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSExpansionAttributeName value:[NSNumber numberWithFloat:expansion] range:range];
    return [string copy];
}

- (NSAttributedString *)xz_setURL:(NSURL *)url inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSLinkAttributeName value:url range:range];
    return [string copy];
}

- (NSAttributedString *)xz_setAttacment:(NSTextAttachment *)attachment inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSAttachmentAttributeName value:attachment range:range];
    return [string copy];
}

- (NSAttributedString *)xz_setImage:(UIImage *)image bound:(CGRect)bound atIndex:(NSInteger)index {
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = image;
    attachment.bounds = bound;
    NSAttributedString *imageStr = [NSAttributedString attributedStringWithAttachment:attachment];
    NSMutableAttributedString *mutStr = [self mutableCopy];
    [mutStr insertAttributedString:imageStr atIndex:0];
    return [mutStr copy];
}

- (NSAttributedString *)xz_setAttributes:(NSDictionary *)dic inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttributes:dic range:range];
    return [string copy];
}

@end
