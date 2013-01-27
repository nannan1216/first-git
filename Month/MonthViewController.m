//
//  MonthViewController.m
//  Month
//
//  Created by apple  on 12-12-26.
//  Copyright (c) 2012年 Appleker. All rights reserved.
//

#import "MonthViewController.h"

@interface MonthViewController ()

@end

@implementation MonthViewController
@synthesize monthArray,image,table,Arr,nibloadedCell;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.monthArray = [NSMutableArray arrayWithObjects:
                       @"一月",
                       @"二月",
                       @"三月",
                       @"四月",
                       @"五月",
                       @"六月",
                       @"七月",
                       @"八月",
                       @"九月",
                       @"十月",
                       @"十一月",
                       @"十二月",
                       nil];
    self.Arr = [NSMutableArray arrayWithObjects:
                @"2012年1月",
                @"2012年2月",
                @"2012年3月",
                @"2012年4月",
                @"2012年5月",
                @"2012年6月",
                @"2012年7月",
                @"2012年8月",
                @"2012年9月",
                @"2012年10月",
                @"2012年11月",
                @"2012年12月",
                nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.monthArray = nil ;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;//一段//
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return monthArray.count;//xx 行//
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
   return @"月份";//加一个表格标题//
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitlereuseIdentifier:CellIdentifier];//
        [[NSBundle mainBundle] loadNibNamed:@"MonthTableCell" owner:self options:nil];
        cell = nibloadedCell;//自定义一个单元格//
    }
    // Configure the cell...
//    cell.textLabel.text = [monthArray objectAtIndex:indexPath.row];
//    cell.detailTextLabel.text = [Arr objectAtIndex:indexPath.row];//给每个单元格加一个小标题//
   // UILabel *label = [[UILabel alloc]initWithFrame:(CGRect)]//
    //[cell.contentView addSubview:label];//
    UILabel *label = (UILabel *)[cell viewWithTag:1];
    label.text = [monthArray objectAtIndex:indexPath.row];
    return cell;
   
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;//默认单元格可以被编辑//
}



- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [monthArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath//选中某一行//
{
    [image setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",indexPath.row+1]]];
    //[image setImage:[UIImage imageNamed:@"1.jpg"]];

}

-(IBAction) onButtonAdd: (id) button
{
    [monthArray addObject:@"世界末日"];

    [table reloadData];
}

/*-(IBAction) onSwitch: (id) sender
{
    UISwitch *onnff = (UISwitch *)sender;
    NSLog(@"Operating switch,status=%d",(onnff.on == YES)?1:0);
    
    UITableViewCell *cell =(UITableViewCell *)[[onnff superview] superview];
    NSIndexPath *indexpath = [self.];

}*/

@end
