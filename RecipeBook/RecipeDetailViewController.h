//
//  RecipeDetailViewController.h
//  RecipeBook
//
//  Created by Adrian on 15/8/15.
//  Copyright (c) 2015年 Adrian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeDetailViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *recipeNameLabel;
@property (nonatomic, strong) NSString *recipeName;

@end
