//
//  TAMainViewController.m
//  TableApplication
//
//  Created by Vlad Skintiyan on 8/10/15.
//  Copyright (c) 2015 Vlad Skintiyan. All rights reserved.
//

#import "TAMainViewController.h"
#import "TATableViewCell.h"
#import "TADataModel.h"

const uint8_t kRowCount = 10;

@interface TAMainViewController ()

@property (strong, nonatomic) TADataModel *dataModel;

@end

@implementation TAMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataModel = [TADataModel defaultModel];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return kRowCount;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TATableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.titleLabel.text = [self.dataModel getRandomObject];
    cell.cellImageView.image = [UIImage imageNamed:@"design_icon"];
    
    return cell;
}

@end
