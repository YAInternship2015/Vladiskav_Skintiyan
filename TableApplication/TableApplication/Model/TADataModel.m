//
//  TADataModel.m
//  TableApplication
//
//  Created by Vlad Skintiyan on 8/10/15.
//  Copyright (c) 2015 Vlad Skintiyan. All rights reserved.
//

#import "TADataModel.h"

@interface TADataModel()

#warning тут из названия свойства вообще неочевидно, что хранится в данном массиве. Вообще мы договаривались, что должнен быть класс-модель, который в себе инкапсулирует текст и картинку. Хоть картинка у Вас одна и та же, давайте придерживаться правил. Создайте класс-модель и храните данные в ней
@property (strong, nonatomic) NSMutableArray *model;

@end

@implementation TADataModel

#warning Синглтон - это антипаттерн, его стоит использовать крайне редко в исключительных ситуациях. В контексте данного задания достаточно создавать данный объект-датасорс во вью контроллере и хранить его там

+ (TADataModel *)defaultModel {
    static TADataModel *defaultModel = nil;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        defaultModel = [[TADataModel alloc] init];
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"TAStringsList" ofType:@"plist"];
        if (nil != path) {
            defaultModel.model = [NSMutableArray arrayWithContentsOfFile:path];
        }
        
        
    });
    
    return defaultModel;
}

#warning в obj-c в именах геттеров не принято использовать get, если это, скажем так, "моментальный" геттер. Если же для получения данных нужно выполнить длительную операцию (например, запрос в сеть), тогда имя метода начинается с "request", "load" или вроде того
- (NSString *)getRandomObject {
    int index = arc4random() % [self.model count];
    NSString *string = [self.model objectAtIndex:index];
    [self.model removeObjectAtIndex:index];

    return string;
}

@end
