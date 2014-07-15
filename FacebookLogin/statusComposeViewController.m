//
//  statusComposeViewController.m
//  FacebookLogin
//
//  Created by ANUPRIYA AGRAWAL on 7/14/14.
//  Copyright (c) 2014 IshanBhalla. All rights reserved.
//

#import "statusComposeViewController.h"

@interface statusComposeViewController ()
- (IBAction)onCancel:(id)sender;

@end

@implementation statusComposeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
