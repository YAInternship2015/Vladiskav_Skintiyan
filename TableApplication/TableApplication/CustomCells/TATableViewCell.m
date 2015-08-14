//
//  TATableViewCell.m
//  TableApplication
//
//  Created by Vlad Skintiyan on 8/10/15.
//  Copyright (c) 2015 Vlad Skintiyan. All rights reserved.
//

#import "TATableViewCell.h"

@interface TATableViewCell()

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UIImageView *cellImageView;

@end

@implementation TATableViewCell

- (void)setupWithImage:(UIImage *)anImage andTitle:(NSString *)aTitle {
    self.titleLabel.text = aTitle;
    self.cellImageView.image = anImage;
}

@end
