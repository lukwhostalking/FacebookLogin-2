//
//  feedViewController.m
//  FacebookLogin
//
//  Created by ANUPRIYA AGRAWAL on 7/2/14.
//  Copyright (c) 2014 IshanBhalla. All rights reserved.
//

#import "feedViewController.h"

@interface feedViewController ()
//@property (weak, nonatomic) IBOutlet UIImageView *feedImageView;

@end

@implementation feedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"News Feed";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //NSLog(@"reached 0");
    // Do any additional setup after loading the view from its nib.
    
    UIImage *searchButtonImage = [[UIImage imageNamed:@"navbar-search"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:searchButtonImage  style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    UIImage *friendButtonImage = [[UIImage imageNamed:@"navbar-friends"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:friendButtonImage  style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.rightBarButtonItem = rightButton;
//    
//    UIScrollView *scrollView;
//    UIImageView *imageView;
//    
//    NSDictionary *viewsDictionary;
//
//    scrollView = [[UIScrollView alloc] init];
//    imageView = [[UIImageView alloc] init];
    //imageView = self.feedImageView;
   //NSLog(@"reached 1");
//    
//    [imageView setImage:[UIImage imageNamed:@"bigScrollingImage"]];
//    
//    [self.view addSubview:scrollView];
//    [scrollView addSubview:imageView];
//    
//    // Set the translatesAutoresizingMaskIntoConstraints to NO so that the views autoresizing mask is not translated into auto layout constraints.
//    scrollView.translatesAutoresizingMaskIntoConstraints = NO;
//    imageView.translatesAutoresizingMaskIntoConstraints = NO;
//    
//    //NSLog(@"reached 2");
//    
//    
//    // Set the constraints for the scroll view and the image view.
//    viewsDictionary = NSDictionaryOfVariableBindings(scrollView,imageView);
//    [self.view addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[scrollView]|" options:0 metrics:0 views:viewsDictionary]];
//    //NSLog(@"reached 3");
//    [self.view addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[scrollView]|" options:0 metrics:0 views:viewsDictionary]];
//    [self.view addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[imageView]|" options:0 metrics:0 views:viewsDictionary]];
//    [self.view addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[imageView]|" options:0 metrics:0 views:viewsDictionary]];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
