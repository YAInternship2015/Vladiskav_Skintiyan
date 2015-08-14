//
//  TADataModel.m
//  TableApplication
//
//  Created by Vlad Skintiyan on 8/10/15.
//  Copyright (c) 2015 Vlad Skintiyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TADataModel.h"

@interface TADataModel()

@property (nonatomic, strong) NSMutableArray *stringData;
@property (nonatomic, strong) UIImage *imageData;

@end

@implementation TADataModel

- (instancetype)init {
    self = [super init];
    
    if (nil != self) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"TAStringsList" ofType:@"plist"];
        if (nil != path) {
            self.stringData = [NSMutableArray arrayWithContentsOfFile:path];
        }
        
        self.imageData = [UIImage imageNamed:@"design_icon"];
    }
    
    return self;
}

@end
