//
//  ImageAttachmentView.m
//  虎踞龙蟠
//
//  Created by Boyce on 8/16/13.
//  Copyright (c) 2013 Ethan. All rights reserved.
//

#import "ImageAttachmentView.h"

@implementation ImageAttachmentView
@synthesize mDelegate;
@synthesize indexNum;

-(void)dealloc
{
    imageView = nil;
    nameLabel = nil;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height - 45)];
        [imageView setContentMode:UIViewContentModeScaleAspectFill];
        [imageView setClipsToBounds:YES];
        [self addSubview:imageView];
        
        nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, frame.size.height - 40, frame.size.width, 20)];
        [nameLabel setTextAlignment:NSTextAlignmentCenter];
        nameLabel.font = [UIFont systemFontOfSize:14];
        [self addSubview:nameLabel];
    }
    return self;
}

-(void)setAttachmentURL:(NSURL *)imageURL NameText:(NSString *)nameText
{
    [imageView setImageWithURL:imageURL];
    nameLabel.text = nameText;
    
    UITapGestureRecognizer* recognizer;
    recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(taped)];
    [self addGestureRecognizer:recognizer];
    recognizer = nil;
}

-(void)taped
{
    [mDelegate imageAttachmentViewTaped:indexNum];
}

@end
