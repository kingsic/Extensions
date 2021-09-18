//
//  UITextView+SGAppKit.m
//  SGAppKitExample
//
//  Created by kingsic on 2020/6/23.
//  Copyright © 2020 kingsic. All rights reserved.
//

#import "UITextView+SGAppKit.h"

@implementation UITextView (SGAppKit)
/// 加载带有标签的字符串
- (void)SG_loadHTMLString:(NSString *)string {
    NSAttributedString *attributeString = [[NSAttributedString alloc] initWithData:[string dataUsingEncoding:NSUnicodeStringEncoding] options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType} documentAttributes:nil error:nil];
    self.attributedText = attributeString;
}
/// 加载带有标签的字符串，spacing：上下行间距
- (void)SG_loadHTMLString:(NSString *)string spacing:(CGFloat)spacing {
    NSAttributedString *attributeString = [[NSAttributedString alloc] initWithData:[string dataUsingEncoding:NSUnicodeStringEncoding] options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType} documentAttributes:nil error:nil];
    NSMutableAttributedString *mAttributedString = [[NSMutableAttributedString alloc] initWithAttributedString:attributeString];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = spacing;
    [mAttributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, attributeString.length)];
    self.attributedText = mAttributedString;
}

@end
