//
//  CTFrameParserConfig.m
//  CoreText_3
//
//  Created by 杨杨 on 16/3/20.
//  Copyright © 2016年 yql. All rights reserved.
//

#import "CTFrameParserConfig.h"

@implementation CTFrameParserConfig

- (id)init {
    
    self = [super init];
    if (self) {
        _width = 200.0f;
        _fontSize = 16.0f;
        _lineSpace = 8.0f;
        _textColor = RGB(108, 108, 108);
    }
    return self;
}

@end
