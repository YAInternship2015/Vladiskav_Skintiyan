//
//  TADataModel.h
//  TableApplication
//
//  Created by Vlad Skintiyan on 8/10/15.
//  Copyright (c) 2015 Vlad Skintiyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TADataModel : NSObject

+ (TADataModel *)defaultModel;
#warning сделайте фиксированное число объектов. Вашу инициативу я оценил
- (NSString *)getRandomObject;

@end
