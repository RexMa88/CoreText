//
//  ViewController.m
//  CoreText
//
//  Created by Rex Ma on 15/9/8.
//  Copyright (c) 2015年 Rex Ma. All rights reserved.
//

#import "ViewController.h"
#import "CTFrameParserConfig.h"
#import "CoreTextData.h"
#import "CTFrameParser.h"
#import "CoreTextView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet CoreTextView *ctView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CTFrameParserConfig *config = [[CTFrameParserConfig alloc] init];
    config.textColor = [UIColor redColor];
    config.width = self.ctView.frame.size.width;
    
    CoreTextData *data = [CTFrameParser parseContent:@" 按照以上原则，我们将`CTDisplayView`中的部分内容拆开。" config:config];
    self.ctView.data = data;
    self.ctView.frame = CGRectMake(self.ctView.frame.origin.x, self.ctView.frame.origin.y, config.width, data.height);
//    self.ctView.height = data.height;
    self.ctView.backgroundColor = [UIColor yellowColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
