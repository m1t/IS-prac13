//
//  ViewController.m
//  IS-prac13
//
//  Created by Chida Mitsuhiro on 14/01/20.
//  Copyright (c) 2014年 Chida Mitsuhiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (void) hello:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(50, 50, 100, 40);
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(hello:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) hello:(UIButton *)sender
{
    [[[UIAlertView alloc] initWithTitle:@"Button" message:@"クリック" delegate:self cancelButtonTitle:@"キャンセル" otherButtonTitles:@"OK", nil] show];
}

@end
