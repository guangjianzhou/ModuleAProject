//
//  CustomModuleAView.m
//  ModuleAProject
//
//  Created by little🐟 on 2019/10/15.
//  Copyright © 2019 little🐟. All rights reserved.
//

#import "CustomModuleAView.h"


@interface CustomModuleAView()

@property (nonatomic, strong) UILabel *titleLabel;

@end


@implementation CustomModuleAView

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        _titleLabel = [[UILabel alloc] initWithFrame:self.bounds];
        [self addSubview:_titleLabel];
        _titleLabel.textColor = [UIColor redColor];
        _titleLabel.text = @"ModuleA";
        
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(80, 10, 40, 40)];
        imageView.image = [UIImage imageNamed:@"add_chat_vote_custome_icon"];
        [self addSubview:imageView];
        
    }
    return self;
}

@end
