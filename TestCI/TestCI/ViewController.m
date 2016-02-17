//
//  ViewController.m
//  TestCI
//
//  Created by sluin on 16/1/11.
//  Copyright © 2016年 SenseTime. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"FirstViewController";
}

- (IBAction)onBtn:(id)sender {
    
    if (!self.mySwitch.isOn) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"warning" message:@"turn on the switch to push the next view controller" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
        [alert show];
        
        return;
    }

    
    SecondViewController *secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self.navigationController pushViewController:secondVC animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
