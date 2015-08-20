//
//  RecipeDetailViewController.h
//  RecipeBook
//
//  Created by Adrian on 15/8/15.
//  Copyright (c) 2015年 Adrian. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Recipe.h"

@interface RecipeDetailViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;




@property (nonatomic, weak) IBOutlet UILabel *recipeNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *recipePrepLabel;

@property (weak, nonatomic) IBOutlet UITextView *recipeIngredientsTextView;
@property (nonatomic, strong) Recipe *recipe;
@property (nonatomic, strong) NSString *recipeName;

@end
