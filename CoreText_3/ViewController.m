//
//  ViewController.m
//  CoreText_3
//
//  Created by 杨杨 on 16/3/20.
//  Copyright © 2016年 yql. All rights reserved.
//

#import "ViewController.h"
#import "CTDisplayView.h"
#import "CTFrameParserConfig.h"
#import "CTFrameParser.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet CTDisplayView *ctView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CTFrameParserConfig *config = [[CTFrameParserConfig alloc] init];
    config.textColor = [UIColor redColor];
    config.width = self.ctView.width;
    
    CoreTextData *data = [CTFrameParser parseContent:@"按照以上原则，我们将中的部分内容拆开。" config:config];
    self.ctView.data = data;
    self.ctView.height = data.height;
    self.ctView.backgroundColor = [UIColor yellowColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
