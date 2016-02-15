//
//  SecondViewController.m
//  TestCI
//
//  Created by sluin on 16/2/5.
//  Copyright © 2016年 SenseTime. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
{
    int _iNumber;
}

@property (weak, nonatomic) IBOutlet UILabel *lblNumber;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _iNumber = self.lblNumber.text.intValue;
    
    self.title = @"SecondViewController";
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(addOne)];
    [self.lblNumber addGestureRecognizer:tap];
    
}

- (void)addOne
{
    self.lblNumber.text = [NSString stringWithFormat:@"%d" , ++ _iNumber];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
