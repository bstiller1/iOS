//
//  BIDViewController.m
//  Control Fun
//
//  Created by Blake Stiller on 2014-08-19.
//  Copyright (c) 2014 blakestiller. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;
@property (weak, nonatomic) IBOutlet UIButton *doSomethingButton;


@end

@implementation BIDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.sliderLabel.text = @"50";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];
}

- (IBAction)backgroundTap:(id)sender{
    [self.nameField resignFirstResponder];
    [self.numberField resignFirstResponder];
}
- (IBAction)sliderChanged:(UISlider *)sender {
    int progress = lroundf(sender.value);
    self.sliderLabel.text = [NSString stringWithFormat:@"%d", progress];
}
- (IBAction)switchchanged:(UISwitch *)sender {
    BOOL setting = sender.isOn;
    [self.leftSwitch setOn:setting animated:YES];
    [self.rightSwitch setOn:setting animated:YES];
}
- (IBAction)buttonPressed:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Are you sure?"
                                  delegate:self
                                  cancelButtonTitle:@"No Way!"
                                  destructiveButtonTitle:@"Yes, I'm sure!"
                                  otherButtonTitles:nil];
    [actionSheet showInView:self.view];
}
- (void)actionSheet:(UIActionSheet *)actionSheet
    didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex !=[actionSheet cancelButtonIndex]){
        NSString *msg = nil;
        
        if([self.nameField.text length] > 0){
            msg = [NSString stringWithFormat:
                   @"You can breathe easy, %@, everything went OK.", self.nameField.text];
        }else{
            msg = @"You can breathe easy, everything went OK.";
        }
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Something was done." message:msg
                                  delegate:self
                              cancelButtonTitle:@"Phew!" otherButtonTitles:nil];
        [alert show];
    }
}
- (IBAction)toggleControls:(UISegmentedControl *)sender {
    if(sender.selectedSegmentIndex == 0){
        self.leftSwitch.hidden = NO;
        self.rightSwitch.hidden = NO;
        self.doSomethingButton.hidden = YES;
    }else{
        self.leftSwitch.hidden = YES;
        self.rightSwitch.hidden = YES;
        self.doSomethingButton.hidden = NO;
    }
}

@end
