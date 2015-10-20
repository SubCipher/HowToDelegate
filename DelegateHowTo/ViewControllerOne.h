//
//  ViewControllerOne.h
//  DelegateHowTo
//
//  Created by MacMan on 10/9/15.
//  Copyright © 2015 stepwisedesigns. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DepartmentsTableVC.h"

@interface ViewControllerOne : UIViewController <departmentDelegate>

@property (strong, nonatomic) IBOutlet UILabel *departmentLabel;

@end
