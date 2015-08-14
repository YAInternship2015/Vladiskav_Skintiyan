//
//  TADetailViewController.m
//  TableApplication
//
//  Created by Vlad Skintiyan on 8/13/15.
//  Copyright (c) 2015 Vlad Skintiyan. All rights reserved.
//

#import "TADetailViewController.h"
#import "UIColor+RandomColor.h"

@interface TADetailViewController ()

@property (nonatomic, weak) IBOutlet UILabel *symbolLabel;

@end

@implementation TADetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.symbolLabel.text = self.symbol;
    self.symbolLabel.textColor = [UIColor randomColor];
}

@end
