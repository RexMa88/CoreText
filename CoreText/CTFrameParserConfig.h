//
//  CTFrameParserConfig.h
//  CoreText
//
//  Created by Rex Ma on 15/9/9.
//  Copyright (c) 2015年 Rex Ma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CTFrameParserConfig : NSObject

@property (assign, nonatomic) CGFloat width;
@property (assign, nonatomic) CGFloat fontSize;
@property (assign, nonatomic) CGFloat lineSpace;
@property (strong, nonatomic) UIColor *textColor;

@end
