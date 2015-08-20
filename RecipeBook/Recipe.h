//
//  Recipe.h
//  RecipeBook
//
//  Created by Adrian on 15/8/16.
//  Copyright (c) 2015年 Adrian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface Recipe : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *prepTime;
@property (nonatomic, strong) NSString *image; 
@property (nonatomic, strong) NSArray *ingredients;

@end
