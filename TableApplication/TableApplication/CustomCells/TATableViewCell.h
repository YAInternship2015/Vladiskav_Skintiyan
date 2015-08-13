//
//  TATableViewCell.h
//  TableApplication
//
//  Created by Vlad Skintiyan on 8/10/15.
//  Copyright (c) 2015 Vlad Skintiyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TATableViewCell : UITableViewCell

#warning эти свойства нет необходимости показывать в *.h файле. Если вы реализуете метод setupWith<Имя вашей модели>:, то эти свойства переедут в *.m файл. Не нужно показывать в *.h файле ничего лишнего, только то, что необходимо для работы других объектов с данным классом
#warning принято писать (nonatomic, weak)
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;

@end
