//
//  DepartmentsTableVC.m
//  DelegateHowTo
//
//  Created by MacMan on 10/13/15.
//  Copyright © 2015 stepwisedesigns. All rights reserved.
//

#import "DepartmentsTableVC.h"

@interface DepartmentsTableVC ()
@property (nonatomic,strong)NSArray *departments;


@end

@implementation DepartmentsTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.departments = @[@"HR",@"Sales",@"Warehouse",@"Office", @"Other"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return self.departments.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = self.departments[indexPath.row];
    
    return cell;
}



#pragma mark - Table view delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.delegate didSelectWith:self department:[self.tableView cellForRowAtIndexPath:indexPath].textLabel.text];
}

@end
