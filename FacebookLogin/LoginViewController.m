//
//  LoginViewController.m
//  FacebookLogin
//
//  Created by ANUPRIYA AGRAWAL on 6/25/14.
//  Copyright (c) 2014 IshanBhalla. All rights reserved.
//

#import "LoginViewController.h"
#import "feedViewController.h"

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



@end

bool isShitInPlace = true;

@implementation LoginViewController

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
        NSLog(@"a");
        UIViewController *vc = [[feedViewController alloc] init];
        vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
        nvc.navigationBar.barTintColor = [UIColor colorWithRed:59/255.0f green:89/255.0f blue:152/255.0f alpha:1.0f];
        nvc.navigationBar.translucent = NO;
        
        NSDictionary *titleTextAttributes =  @{NSForegroundColorAttributeName: [UIColor whiteColor]};
        
        nvc.navigationBar.titleTextAttributes = titleTextAttributes;
        
//        resultsViewController *vc = [[resultsViewController alloc] init];
//        
//        UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
//        
//        vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
//        
//        [self presentViewController:nvc animated:YES completion:Nil];
        
        [self presentViewController:nvc animated:YES completion: nil];
        
    }
    else
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"don't fuck around" message:@"like i said, dont fuck around" delegate:nil cancelButtonTitle:@"I'm sorry" otherButtonTitles: nil];
        [alertView show];
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
@end
