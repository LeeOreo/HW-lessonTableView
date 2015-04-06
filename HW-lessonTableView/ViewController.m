//
//  ViewController.m
//  HW-lessonTableView
//
//  Created by 李育豪 on 2015/4/6.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    lessonList = [[NSMutableArray alloc] init];
    [lessonList addObject:@"View Controller Lifecycle"];
    [lessonList addObject:@"UIView and other Views"];
    [lessonList addObject:@"Category & UITableViewController"];
    [lessonList addObject:@"UICollectionViewController"];
    [lessonList addObject:@"App Spec Homework"];
    [lessonList addObject:@"View Controller 總複習"];
}
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [lessonList count];
}
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = [lessonList objectAtIndex:indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
