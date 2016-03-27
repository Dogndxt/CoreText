//
//  CoreTextData.m
//  CoreText_3
//
//  Created by 杨杨 on 16/3/20.
//  Copyright © 2016年 yql. All rights reserved.
//

#import "CoreTextData.h"

@implementation CoreTextData

- (void)setCtFrame:(CTFrameRef)ctFrame {

    if (_ctFrame != ctFrame) {
        if (_ctFrame != nil) {
            CFRelease(_ctFrame);
        }
        CFRetain(ctFrame);
        _ctFrame = ctFrame;
    }
}

- (void)dealloc {

    if (_ctFrame != nil) {
        CFRelease(_ctFrame);
        _ctFrame = nil;
    }
}

@end
