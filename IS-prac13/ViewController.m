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
    [button setTitle:@"了解" forState:UIControlStateNormal];
    [button setTitle:@"済み" forState:UIControlStateDisabled];
    button.frame = CGRectMake(50, 50, 100, 40);
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(hello:) forControlEvents:UIControlEventTouchUpInside];
    
    UIImage * imageData = [UIImage imageNamed:@"button.png"];
    UIImage * resizableImage = [imageData resizableImageWithCapInsets:UIEdgeInsetsMake(17, 17, 17, 17)];
    
    [button setBackgroundImage:resizableImage forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)hello:(UIButton *)sender
{
    [[[UIAlertView alloc] initWithTitle:@"Button" message:@"クリック" delegate:self cancelButtonTitle:@"キャンセル" otherButtonTitles:@"OK", nil] show];
    if (sender.frame.size.height < 200) {
        sender.frame = CGRectMake(sender.frame.origin.x, sender.frame.origin.y, sender.frame.size.width * 1.2, sender.frame.size.height * 1.5);
    } else{
        sender.enabled = !sender.enabled;
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0: // キャンセルボタン
            NSLog(@"Cancel");
            break;
        case 1: // OKボタン
            NSLog(@"OK");
            break;
        default:
            break;
    }
}

@end
