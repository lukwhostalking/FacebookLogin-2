//
//  LoginViewController.m
//  FacebookLogin
//
//  Created by ANUPRIYA AGRAWAL on 6/25/14.
//  Copyright (c) 2014 IshanBhalla. All rights reserved.
//

#import "LoginViewController.h"
//#import "feedViewController.h"
#import "newsFeedViewController.h"
#import "blankViewController.h"
#import "moreViewController.h"


@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UIView *loginView;
- (IBAction)onEdit:(id)sender;
- (IBAction)onPasswordEdit:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *facebookLogo;
@property (weak, nonatomic) IBOutlet UIButton *signUpBtn;
- (IBAction)onTap:(id)sender;
- (IBAction)onBtnLogin:(id)sender;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *loadingIndicator;
@property (weak, nonatomic) IBOutlet UITextField *loginID;
@property (weak, nonatomic) IBOutlet UITextField *password;

- (void) loadTabController;



@end

bool isShitInPlace = true;


@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
         //self.tabBarController = [[UITabBarController alloc] init];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    self.loginID.delegate = self;
    self.password.delegate = self;
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




//- (IBAction)onTap:(id)sender {
//    NSLog(@"tap recognized");
//    CGRect frame = self.loginView.frame;
//    frame.origin.y -= 20;
//    self.loginView.frame = frame;
//}
//
//- (IBAction)onEnter:(id)sender {
//    NSLog(@"enter recognized");
//    CGRect frame = self.loginView.frame;
//    frame.origin.y -= 80;
//    self.loginView.frame = frame;
//}


- (IBAction)onEdit:(id)sender {

}

- (IBAction)onPasswordEdit:(id)sender {


}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    
    if (!isShitInPlace)
    {
        CGRect frame = self.loginView.frame;
        frame.origin.y += 80;
        //self.loginView.frame = frame;
        
        CGRect logoFrame = self.facebookLogo.frame;
        logoFrame.origin.y += 70;
        //self.facebookLogo.frame = logoFrame;
        
        CGRect signUpFrame = self.signUpBtn.frame;
        signUpFrame.origin.y += 167;
        //self.signUpBtn.frame = signUpFrame;
        
        [UIView animateWithDuration:0.3 animations:^{
            self.loginView.frame = frame;
            self.facebookLogo.frame = logoFrame;
            self.signUpBtn.frame = signUpFrame;
            
        }];
        
        
        isShitInPlace = true;
    }
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"edit detected");
    NSLog(@"enter recognized");
    if (isShitInPlace)
    {
        CGRect frame = self.loginView.frame;
        frame.origin.y -= 80;
        
        CGRect logoFrame = self.facebookLogo.frame;
        logoFrame.origin.y -= 70;
        
        CGRect signUpFrame = self.signUpBtn.frame;
        signUpFrame.origin.y -= 167;
        
        [UIView animateWithDuration:0.3 animations:^{
            self.loginView.frame = frame;
            self.facebookLogo.frame = logoFrame;
            self.signUpBtn.frame = signUpFrame;
            
        }];
        
        
        isShitInPlace = FALSE;
    }
}

- (IBAction)onBtnLogin:(id)sender {
    NSLog(@"Login button hit!");
    [self.view endEditing:YES];
    [self.loadingIndicator startAnimating];
    if ([self.loginID.text isEqualToString:@"a"] && [self.password.text isEqualToString:@"a"] )
    {
        //NSLog(@"a");
        
        [self performSelector:@selector (loadTabController) withObject:nil afterDelay:2];
        
        
        
    }
    else
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"don't fuck around" message:@"like i said, dont fuck around" delegate:nil cancelButtonTitle:@"I'm sorry" otherButtonTitles: nil];
        [alertView show];
        [self.loadingIndicator stopAnimating];
    }
    CGRect frame = self.loginView.frame;
    frame.origin.y += 80;
    self.loginView.frame = frame;
    
    CGRect logoFrame = self.facebookLogo.frame;
    logoFrame.origin.y += 70;
    self.facebookLogo.frame = logoFrame;
    
    CGRect signUpFrame = self.signUpBtn.frame;
    signUpFrame.origin.y += 167;
    self.signUpBtn.frame = signUpFrame;
    isShitInPlace = true;
    

    
}
- (void) loadTabController{
    NSLog(@"delaying");
    [self.loadingIndicator stopAnimating];
    UIViewController *vc = [[newsFeedViewController alloc] init];
    blankViewController *requests = [[blankViewController alloc]init];
    blankViewController *messenger = [[blankViewController alloc] init];
    blankViewController *notifications = [[blankViewController alloc] init];
    moreViewController *more= [[moreViewController alloc] init];
    
    
    // add a nav controller to the news tab
    //UINavigationController *newsFeedNavController = [[UINavigationController alloc] initWithRootViewController:newsFeedViewController];
    //newsFeedNavController.navigationBar.tintColor = [UIColor whiteColor];
    //newsFeedNavController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
    //newsFeedNavController.navigationBar.barTintColor = [[UIColor alloc] initWithRed:77.0/255.0 green:106.0/255.0 blue:164.0/255.0 alpha:1];
    //newsFeedNavController.navigationBar.translucent = NO;
    
    //adding navigation controller to NewsFeed
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
    nvc.navigationBar.barTintColor = [UIColor colorWithRed:59/255.0f green:89/255.0f blue:152/255.0f alpha:1.0f];
    nvc.navigationBar.translucent = NO;
    NSDictionary *titleTextAttributes =  @{NSForegroundColorAttributeName: [UIColor whiteColor]};
    nvc.navigationBar.titleTextAttributes = titleTextAttributes;
    
    //adding navigation controller to More view
    UINavigationController *moreNav = [[UINavigationController alloc] initWithRootViewController:more];
    moreNav.navigationBar.barTintColor = [UIColor colorWithRed:59/255.0f green:89/255.0f blue:152/255.0f alpha:1.0f];
    moreNav.navigationBar.translucent = NO;
    //NSDictionary *moreTitleTextAttributes =  @{NSForegroundColorAttributeName: [UIColor whiteColor]};
    moreNav.navigationBar.titleTextAttributes = titleTextAttributes;
    
    //creating the tab bar controller
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[nvc, requests, messenger, notifications, moreNav];
    nvc.tabBarItem.title = @"News Feed";
    nvc.tabBarItem.image = [UIImage imageNamed:@"tabNewsFeed"];
    
    requests.tabBarItem.title = @"Requests";
    requests.tabBarItem.image = [UIImage imageNamed:@"tabRequests"];
    
    messenger.tabBarItem.title = @"Messenger";
    messenger.tabBarItem.image = [UIImage imageNamed:@"tabMessenger"];
    
    notifications.tabBarItem.title= @"Notifications";
    notifications.tabBarItem.image = [UIImage imageNamed:@"tabNotifications"];
    
    moreNav.tabBarItem.title = @"More";
    moreNav.tabBarItem.image = [UIImage imageNamed:@"tabMore"];
    
    
    tabBarController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    
    [self presentViewController:tabBarController animated:YES completion: nil];
    self.loginID.text = @"";
    self.password.text = @"";
}

@end
