//
//  LEDownloadProgressCell.m
//
//  Created by Igor Ranieri on 3/9/13.
//  Copyright (c) 2013 Igor Ranieri. All rights reserved.
//

#import "LEDownloadProgressCell.h"

@interface LEDownloadCell()
@property (nonatomic, strong) UIView *progressView;
@property (nonatomic) CGFloat progress;
@end

@implementation LEDownloadProgressCell

- (void)awakeFromNib
{
    self.progressView = [[UIView alloc] initWithFrame:self.contentView.bounds];
    [self.progressView setBackgroundColor:[UIColor colorWithRed:1.00 green:0.60 blue:0.32 alpha:1.0]];
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    [self.progressView setFrame:CGRectMake(0, 0, (self.bounds.size.width) * self.progress, self.bounds.size.height)];
    UIImage *bgImage = [self.progressView imageRepresentationWithSize:self.bounds.size backgroundColor:[UIColor whiteColor]];
    [self setBackgroundColor:[UIColor colorWithPatternImage:bgImage]];
}

- (void)setProgress:(CGFloat)progress
{
    if (progress != _progress)
    {
        _progress = progress;
        [self layoutSubviews];
    }
}

- (void)addSubview:(UIView *)view
{
    if ([view isKindOfClass:[UIImageView class]]) return; // prevent crazy weird image from appearing
    [super addSubview:view];
}
@end
