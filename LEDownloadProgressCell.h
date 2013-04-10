//
//  LEDownloadProgressCell.h
//
//  Created by Igor Ranieri on 3/9/13.
//  Copyright (c) 2013 Igor Ranieri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LEDownloadProgressCell : UITableViewCell
- (void)setProgress:(CGFloat)progress;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@end
