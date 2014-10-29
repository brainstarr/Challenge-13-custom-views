//
//  ViewController.m
//  View Objects In Code
//
//  Created by Brian Starr on 10/28/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UILabel *label1;
@property (strong, nonatomic) UITextField *textField1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect labelFrame = CGRectMake(20, 60, 280, 22);
    self.label1 = [[UILabel alloc]initWithFrame:labelFrame];
    self.label1.text = @"default";
    self.label1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.label1];
    
    CGRect textFieldFrame = CGRectMake(20, 110, 280, 30);
    self.textField1 = [[UITextField alloc]initWithFrame:textFieldFrame];
    self.textField1.text = @"not default";
    self.textField1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.textField1];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(20, 160, 280, 30);
    [button1 setTitle:@"press me" forState:UIControlStateNormal];
    [self.view addSubview:button1];
    
    [button1 addTarget:self action:@selector(didPressButton:) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)didPressButton:(UIButton *)sender
{
    self.label1.text = self.textField1.text;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
