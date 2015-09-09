//
//  CoreTextView.m
//  CoreText
//
//  Created by Rex Ma on 15/9/8.
//  Copyright (c) 2015年 Rex Ma. All rights reserved.
//

#import "CoreTextView.h"
#import <CoreText/CoreText.h>

@implementation CoreTextView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    if (self.data) {
        CTFrameDraw(self.data.ctFrame, context);
    }
}


@end
