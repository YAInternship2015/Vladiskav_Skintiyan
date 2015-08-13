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

@property (weak, nonatomic) IBOutlet UILabel *symbolLabel;

@end

@implementation TADetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.symbolLabel.text = self.symbol;
    self.symbolLabel.textColor = [UIColor randomColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
