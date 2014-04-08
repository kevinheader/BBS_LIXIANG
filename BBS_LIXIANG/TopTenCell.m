//
//  TopTenCell.m
//  SBBS_xiang
//
//  Created by apple on 14-4-5.
//  Copyright (c) 2014年 apple. All rights reserved.
//

#import "TopTenCell.h"

@implementation TopTenCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)setReadyToShow
{
    [_titleLabel setText:_title];
    [_sectionLabel setText:_section];
    
    //NSLog(@"frame: %@", NSStringFromCGRect(_sectionLabel.frame));

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
