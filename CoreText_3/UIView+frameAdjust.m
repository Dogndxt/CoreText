//
//  UIView+frameAdjust.m
//  CoreText_3
//
//  Created by 杨杨 on 16/3/20.
//  Copyright © 2016年 yql. All rights reserved.
//

#import "UIView+frameAdjust.h"

@implementation UIView (frameAdjust)

- (CGFloat)x {
    
    return self.frame.origin.x;
}

- (void)setX:(CGFloat)x {

    self.frame = CGRectMake(x, self.y, self.width, self.height);
}

- (CGFloat)y {

    return self.frame.origin.y;
}

- (void)setY:(CGFloat)y {

    self.frame = CGRectMake(self.x, y, self.width, self.height);
}

- (CGFloat)height {
    
    return self.frame.size.height;
    
}
- (void)setHeight:(CGFloat)height {

    self.frame = CGRectMake(self.x, self.y, self.width, height);
}

- (CGFloat)width {

    return self.frame.size.width;
}
- (void)setWidth:(CGFloat)width {

    self.frame = CGRectMake(self.x, self.y, width, self.height);
}

@end
