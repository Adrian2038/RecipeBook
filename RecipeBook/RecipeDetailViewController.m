//
//  RecipeDetailViewController.m
//  RecipeBook
//
//  Created by Adrian on 15/8/15.
//  Copyright (c) 2015年 Adrian. All rights reserved.
//

#import "RecipeDetailViewController.h"

@interface RecipeDetailViewController ()

@end

@implementation RecipeDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    NSLog(@"RecipeDetailViewController view Did Load ");
    
    self.recipeImageView.image = [UIImage imageNamed:self.recipe.image];
    self.recipeNameLabel.text = self.recipe.name;
    self.recipePrepLabel.text = self.recipe.prepTime;
    
    NSMutableString *ingredientText = [NSMutableString string];
    
    for (NSString *ingredient in self.recipe.ingredients) {
        [ingredientText appendFormat:@"%@\n", ingredient];
    }
    self.recipeIngredientsTextView.text = ingredientText;
}

//- (void)viewWillAppear:(BOOL)animated
//{
//    NSLog(@"RecipeDetailViewController view Will Appear ");
//}
//
//- (void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear:animated];
//    
//    NSLog(@"RecipeDetailViewController view Did Appear ");
//}
//
//- (void)viewWillDisappear:(BOOL)animated
//{
//    NSLog(@"RecipeDetailViewController view Will Disappear ");
//}
//
//- (void)viewDidDisappear:(BOOL)animated
//{
//    NSLog(@"RecipeDetailViewController view Did Disappear ");
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)dealloc
{
    NSLog(@"dealloc self %@", self);
}

@end
