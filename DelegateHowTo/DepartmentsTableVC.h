//
//  DepartmentsTableVC.h
//  DelegateHowTo
//
//  Created by MacMan on 10/13/15.
//  Copyright © 2015 stepwisedesigns. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DepartmentsTableVC;
@protocol departmentDelegate <NSObject>

-(void)didSelectWith:(DepartmentsTableVC *) controller department:(NSString *)department;



@end

@interface DepartmentsTableVC : UITableViewController

@property (nonatomic, weak) id<departmentDelegate>delegate;


@end
