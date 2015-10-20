//
//  ViewControllerOne.m
//  DelegateHowTo
//
//  Created by MacMan on 10/9/15.
//  Copyright © 2015 stepwisedesigns. All rights reserved.
//

#import "ViewControllerOne.h"

@interface ViewControllerOne ()

@end

@implementation ViewControllerOne
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"departmentsSegue"]){
        DepartmentsTableVC *vc = [segue destinationViewController];
        vc.delegate = self;
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)didSelectWith:(DepartmentsTableVC *)controller department:(NSString *)department
{
    [controller dismissViewControllerAnimated:YES completion:nil];
    self.departmentLabel.text = department;
    
}






/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
