//
//  RecipeBookTableViewCell.h
//  RecipeBook
//
//  Created by Adrian on 15/8/16.
//  Copyright (c) 2015年 Adrian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeBookTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;

@property (weak, nonatomic) IBOutlet UILabel *recipeNameLabel;

@property (weak, nonatomic) IBOutlet UILabel *recipePrepLabal;


@end
