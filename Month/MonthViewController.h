//
//  MonthViewController.h
//  Month
//
//  Created by apple  on 12-12-26.
//  Copyright (c) 2012年 Appleker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MonthViewController : UIViewController<UITableViewDataSource,UITableViewDelegate> //如果是表格视图控制器的话会自动包含，普通视图控制器的话需要声明//
@property (strong,nonatomic) IBOutlet UIImageView *image;
@property (strong,nonatomic) IBOutlet UITableView *table;
@property (strong,nonatomic) NSMutableArray *monthArray;
@property (strong,nonatomic) NSMutableArray *Arr;

@property (strong,nonatomic) IBOutlet UITableViewCell *nibloadedCell;

-(IBAction) onButtonAdd: (id) button;

@end
