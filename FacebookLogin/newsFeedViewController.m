//
//  newsFeedViewController.m
//  FacebookLogin
//
//  Created by ANUPRIYA AGRAWAL on 7/11/14.
//  Copyright (c) 2014 IshanBhalla. All rights reserved.
//

#import "newsFeedViewController.h"
#import "statusComposeViewController.h"

@interface newsFeedViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *fScrollView;
- (IBAction)onStatusBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *feedLoadingIndicator;
- (void) showFeed;

@end

@implementation newsFeedViewController

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
    self.title = @"News Feed";
    UIImage *searchButtonImage = [[UIImage imageNamed:@"navbar-search"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:searchButtonImage  style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    UIImage *friendButtonImage = [[UIImage imageNamed:@"navbar-friends"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:friendButtonImage  style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.rightBarButtonItem = rightButton;
    // set up the scroll view
    self.fScrollView.contentSize = CGSizeMake(320, 1183);
    self.fScrollView.frame = CGRectMake(0, 500, 320, 410);
    
    [self.feedLoadingIndicator startAnimating];
    [self performSelector:@selector (showFeed) withObject:nil afterDelay:2];
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onStatusBtn:(id)sender {
    statusComposeViewController *statusVC = [[statusComposeViewController alloc]init];
    statusVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    [self presentViewController:statusVC animated:YES completion:Nil];
}

- (void) showFeed {
    [self.feedLoadingIndicator stopAnimating];
    [UIView animateWithDuration:0.5 animations:^{
    self.fScrollView.frame = CGRectMake(0, 45, 320, 459);
        
    }];
}

@end


