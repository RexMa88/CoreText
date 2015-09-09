//
//  CTFrameParser.h
//  CoreText
//
//  Created by Rex Ma on 15/9/9.
//  Copyright (c) 2015年 Rex Ma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CTFrameParserConfig.h"
#import "CoreTextData.h"
#import <CoreText/CoreText.h>

@interface CTFrameParser : NSObject

+ (CoreTextData *)parseContent:(NSString *)content config:(CTFrameParserConfig*)config;

@end
