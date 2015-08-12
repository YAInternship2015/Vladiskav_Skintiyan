//
//  TADataModel.m
//  TableApplication
//
//  Created by Vlad Skintiyan on 8/10/15.
//  Copyright (c) 2015 Vlad Skintiyan. All rights reserved.
//

#import "TADataModel.h"

@interface TADataModel()

@property (strong, nonatomic) NSMutableArray *model;

@end

@implementation TADataModel

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

- (NSString *)getRandomObject {
    int index = arc4random() % [self.model count];
    NSString *string = [self.model objectAtIndex:index];
    [self.model removeObjectAtIndex:index];

    return string;
}

@end
