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

#warning не нужно хранить модели, храните датасорс и работайте через его интерфейсы
@property (strong, nonatomic) NSMutableArray *model;

@end

@implementation TAMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model = [NSMutableArray array];
    
    for (int i = 0; i < kRowCount; ++i) {
        [self.model addObject:[[TADataModel defaultModel] getRandomObject]];
    }
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.model count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TATableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.titleLabel.text = [self.model objectAtIndex:indexPath.row];
    cell.cellImageView.image = [UIImage imageNamed:@"design_icon"];
    
    return cell;
}

#pragma mark - UITableViewDelegate
#warning В данном методе был бы смысл, если бы ячейки имели разную высоту. Если высота одинаковая, достаточно единожды сообщить о ней таблице, установив свойство rowHeight. Или из кода, или в Storyboard
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80.0;
}

#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"details"]) {
        TADetailViewController *controller = segue.destinationViewController;
        
        controller.symbol = [self.model objectAtIndex:[[self.tableView indexPathForSelectedRow] row]];
    }
}

@end
