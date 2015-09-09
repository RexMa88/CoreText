//
//  CoreTextData.h
//  CoreText
//
//  Created by Rex Ma on 15/9/9.
//  Copyright (c) 2015年 Rex Ma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreText/CoreText.h>

@interface CoreTextData : NSObject

@property (assign, nonatomic) CTFrameRef ctFrame;
@property (assign, nonatomic) CGFloat height;

@end
