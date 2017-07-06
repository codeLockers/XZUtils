//
//  NSAttributedString+XZGenerate.h
//  XZUtils
//
//  Created by codeLocker on 2017/6/26.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSAttributedString (XZGenerate)

- (NSAttributedString *)xz_setColor:(UIColor *)color inRange:(NSRange)range;
- (NSAttributedString *)xz_setFont:(UIFont *)font inRange:(NSRange)range;
- (NSAttributedString *)xz_setBackgroundColor:(UIColor *)color inRange:(NSRange)range;
- (NSAttributedString *)xz_setStrokeColor:(UIColor *)color strokeWidth:(CGFloat)width inRange:(NSRange)range;
- (NSAttributedString *)xz_setShadow:(NSShadow *)shadow inRange:(NSRange)range;
- (NSAttributedString *)xz_setDeleteLine:(NSUnderlineStyle)lineStyle color:(UIColor *)color inRange:(NSRange)range;
- (NSAttributedString *)xz_setUnderLine:(NSUnderlineStyle)lineStyle color:(UIColor *)color inRange:(NSRange)range;
- (NSAttributedString *)xz_setKern:(CGFloat)kern inRange:(NSRange)range;
- (NSAttributedString *)xz_setParagraphStyle:(NSParagraphStyle *)paragraphStyle inRange:(NSRange)range;
- (NSAttributedString *)xz_setLinespace:(CGFloat)linespace inRange:(NSRange)range;
- (NSAttributedString *)xz_setEffect:(NSString *)effect inRange:(NSRange)range;
- (NSAttributedString *)xz_setLigature:(BOOL)isLigature inRange:(NSRange)range;
- (NSAttributedString *)xz_setObliqueness:(CGFloat)obliqueness inRange:(NSRange)range;
- (NSAttributedString *)xz_setBaseLineOffset:(CGFloat)offset inRange:(NSRange)range;
- (NSAttributedString *)xz_setExpansion:(CGFloat)expansion inRange:(NSRange)range;
- (NSAttributedString *)xz_setURL:(NSURL *)url inRange:(NSRange)range;
- (NSAttributedString *)xz_setAttacment:(NSTextAttachment *)attachment inRange:(NSRange)range;
- (NSAttributedString *)xz_setImage:(UIImage *)image bound:(CGRect)bound atIndex:(NSInteger)index;
- (NSAttributedString *)xz_setAttributes:(NSDictionary *)dic inRange:(NSRange)range;

@end
