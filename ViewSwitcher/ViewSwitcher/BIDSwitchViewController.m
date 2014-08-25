//
//  BIDSwitchViewController.m
//  View Switcher
//
//  Created by Blake Stiller on 2014-08-21.
//  Copyright (c) 2014 blakestiller. All rights reserved.
//

#import "BIDSwitchViewController.h"

#import "BIDYellowViewController.h"
#import "BIDBlueViewController.h"

@interface BIDSwitchViewController ()

@property (strong, nonatomic) BIDYellowViewController *yellowViewController;
@property (strong, nonatomic) BIDBlueViewController *blueViewController;

@end

@implementation BIDSwitchViewController

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
    // Do any additional setup after loading the view.
    self.blueViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Blue"];
    [self.view insertSubview:self.blueViewController.view atIndex:0]; 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    if (!self.blueViewController.view.superview) {
        self.blueViewController = nil;
    } else {
        self.yellowViewController = nil;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)switchViews:(id)sender
{
    [UIView beginAnimations:@"View Flip" context:NULL];
    [UIView setAnimationDuration:0.4];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    if (!self.yellowViewController.view.superview){
        if (!self.yellowViewController){
            self.yellowViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Yellow"];
        }
            [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
            [self.blueViewController.view removeFromSuperview];
            [self.view insertSubview:self.yellowViewController.view atIndex:0];
        } else {
            if (!self.blueViewController) {
                self.blueViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Blue"];
            }
            [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
            [self.yellowViewController.view removeFromSuperview];
            [self.view insertSubview:self.blueViewController.view atIndex:0];
        }
    [UIView commitAnimations];
    }


@end