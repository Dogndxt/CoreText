//
//  CTDisplayView.m
//  CoreText_3
//
//  Created by 杨杨 on 16/3/20.
//  Copyright © 2016年 yql. All rights reserved.
//

#import "CTDisplayView.h"

@implementation CTDisplayView


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
