//
//  ViewController.m
//  RecipeBook
//
//  Created by Adrian on 15/8/15.
//  Copyright (c) 2015年 Adrian. All rights reserved.
//

#import "ViewController.h"

#import "RecipeDetailViewController.h"

@interface ViewController ()

{
    NSArray *recipes;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    recipes = [NSArray arrayWithObjects:
               @"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast",
               @"Humburger", @"Ham and Egg Sandwich", @"Creme Brelee",
               @"Whilte Chocolate Donut", @"StarBucks Coffee", @"Vegetable Curry",
               @"Instant Noodle with Egg", @"Noodle with BBQ pork",
               @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake",
               @"Angry Birds Cake", @"Ham and Cheese Panini", nil];

}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    // Before you can use the segue to navigator a new viewController,
    // you would better have a identifier for the segue
    
    if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
        if ([segue.destinationViewController isKindOfClass:[RecipeDetailViewController class]]) {
            NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
            
            // desController.recipeNameLabel.text = [recipes objectAtIndex:indexPath.row];
            // The above line maybe not work as expect, because will the you trigger the segue,
            // the storyboard maybe haven't set the UI elements yet , so the recipeNameLable maybe nil.

            RecipeDetailViewController *desController = segue.destinationViewController;
            desController.recipeName = [recipes objectAtIndex:indexPath.row];
        }
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"RecipeCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    
    return cell;
}


@end
