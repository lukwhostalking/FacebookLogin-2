//
//  moreViewController.m
//  FacebookLogin
//
//  Created by ANUPRIYA AGRAWAL on 7/14/14.
//  Copyright (c) 2014 IshanBhalla. All rights reserved.
//

#import "moreViewController.h"

@interface moreViewController ()
- (IBAction)onLogoutBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *moreScrollView;

@end

@implementation moreViewController

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
    self.title = @"More";
    UIImage *searchButtonImage = [[UIImage imageNamed:@"navbar-search"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:searchButtonImage  style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    UIImage *friendButtonImage = [[UIImage imageNamed:@"navbar-friends"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:friendButtonImage  style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    // set up the scroll view
    self.moreScrollView.contentSize = CGSizeMake(320, 1133);
    //self.moreScrollView.frame = CGRectMake(0, 0, 320, 500);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onLogoutBtn:(id)sender {
    //NSLog(@"Logout button hit");
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
