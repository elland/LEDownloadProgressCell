//
//  UIView+Image.m
//
//  Created by Igor Ranieri on 4/9/13.
//  Copyright (c) 2013 Igor Ranieri. All rights reserved.
//

#import "UIView+Image.h"

@implementation UIView (Image)
- (UIImage *)imageRepresentationWithSize:(CGSize)size backgroundColor:(UIColor *)backgroundColor
{
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);

    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [backgroundColor CGColor]);
    CGContextFillRect(context, CGRectMake(0, 0, size.width, size.height));

    [self.layer renderInContext:UIGraphicsGetCurrentContext()];

    UIImage * img = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();

    return img;
}
@end
