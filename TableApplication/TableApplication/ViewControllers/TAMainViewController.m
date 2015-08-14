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
#import "TADetailViewController.h"

const uint8_t kRowCount = 10;

@interface TAMainViewController ()

@property (nonatomic, strong) TADataModel *dataModel;

@end

@implementation TAMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.dataModel = [[TADataModel alloc] init];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return kRowCount;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TATableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    [cell setupWithImage:self.dataModel.imageData andTitle:[self.dataModel.stringData objectAtIndex:indexPath.row]];
  
    return cell;
}

#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"details"]) {
        TADetailViewController *controller = segue.destinationViewController;
        
        controller.symbol = [self.dataModel.stringData objectAtIndex:[[self.tableView indexPathForSelectedRow] row]];
    }
}

@end
